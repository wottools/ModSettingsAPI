#Copyright (C) 2014, 4lCapwn and CS2001
#
#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
#
#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with this program.  If not, see <http://www.gnu.org/licenses/>



# Embedded file name: scripts/client/gui/Scaleform/daapi/view/lobby/settings/SettingsWindow.py
import functools
import BigWorld
import VOIP
import SoundGroups
from account_helpers.SettingsCore import g_settingsCore
from debug_utils import *
from gui.Scaleform.framework.entities.abstract.AbstractWindowView import AbstractWindowView
from gui.Scaleform.locale.SETTINGS import SETTINGS
from helpers import i18n
from Vibroeffects import VibroManager
from gui import DialogsInterface, g_guiResetters
from gui.BattleContext import g_battleContext
from gui.Scaleform.daapi.view.lobby.settings import constants
from gui.shared.utils import flashObject2Dict, decorators
from gui.Scaleform.daapi import AppRef
from gui.Scaleform.framework.entities.View import View
from gui.Scaleform.daapi.view.meta.SettingsWindowMeta import SettingsWindowMeta
from gui.Scaleform.daapi.view.lobby.settings.SettingsParams import SettingsParams
from gui.Scaleform.daapi.view.lobby.settings.constants import SOUND
from gui.Scaleform.daapi.view.lobby.settings.options import APPLY_METHOD
import ResMgr

# Own imports
import json
import urllib2
import threading
import os
import helpers
from gui import SystemMessages, VERSION_FILE_PATH
import hashlib


# Modified Methods are marked with *

class SettingsWindow(View, AbstractWindowView, SettingsWindowMeta, AppRef):
    
    def __init__(self, ctx):
        super(SettingsWindow, self).__init__()
        self.__redefinedKeyModeEnabled = ctx.get('redefinedKeyMode', True)
        self.__initialTabIdx = ctx.get('tabIndex', 0)
        self.params = SettingsParams()

    # *
    def __getSettings(self):
        return {'GameSettings': self.params.getGameSettings(),
         'GraphicSettings': self.params.getGraphicsSettings(),
         'SoundSettings': self.params.getSoundSettings(),
         'ControlsSettings': self.params.getControlsSettings(),
         'AimSettings': self.params.getAimSettings(),
         'MarkerSettings': self.params.getMarkersSettings(),
         'ModSettings': ModSettingsAPI.mods}

    def __commitSettings(self, settings = None, restartApproved = False, isCloseWnd = False):
        if settings is None:
            settings = {}
        self.__apply(settings, restartApproved, isCloseWnd)
        return

    def __apply(self, settings, restartApproved = False, isCloseWnd = False):
        LOG_DEBUG('Settings window: apply settings', restartApproved, settings)
        g_settingsCore.isDeviseRecreated = False
        g_settingsCore.isChangesConfirmed = True
        isRestart = self.params.apply(settings, restartApproved)
        if g_settingsCore.isChangesConfirmed and isCloseWnd:
            self.onWindowClose()
        if isRestart:
            BigWorld.savePreferences()
            if restartApproved:
                BigWorld.callback(0.3, BigWorld.restartGame)
            elif g_settingsCore.isDeviseRecreated:
                self.onRecreateDevice()
                g_settingsCore.isDeviseRecreated = False
            else:
                BigWorld.callback(0.0, functools.partial(BigWorld.changeVideoMode, -1, BigWorld.isVideoWindowed()))

    def _populate(self):
        super(SettingsWindow, self)._populate()
        self.__currentSettings = self.params.getMonitorSettings()
        self.as_setDataS(self.__getSettings())
        self.as_updateVideoSettingsS(self.__currentSettings)
        self.as_openTabS(self.__initialTabIdx)
        VibroManager.g_instance.onConnect += self.onVibroManagerConnect
        VibroManager.g_instance.onDisconnect += self.onVibroManagerDisconnect
        g_guiResetters.add(self.onRecreateDevice)
        BigWorld.wg_setAdapterOrdinalNotifyCallback(self.onRecreateDevice)
        SoundGroups.g_instance.enableVoiceSounds(True)

    def _dispose(self):
        if not g_battleContext.isInBattle:
            SoundGroups.g_instance.enableVoiceSounds(False)
        g_guiResetters.discard(self.onRecreateDevice)
        BigWorld.wg_setAdapterOrdinalNotifyCallback(None)
        VibroManager.g_instance.onConnect -= self.onVibroManagerConnect
        VibroManager.g_instance.onDisconnect -= self.onVibroManagerDisconnect
        super(SettingsWindow, self)._dispose()
        return

    def onVibroManagerConnect(self):
        self.as_onVibroManagerConnectS(True)

    def onVibroManagerDisconnect(self):
        self.as_onVibroManagerConnectS(False)

    def onTabSelected(self, tabId):
        if tabId == SETTINGS.SOUNDTITLE:
            self.app.voiceChatManager.checkForInitialization()

    def onSettingsChange(self, settingName, settingValue):
        settingValue = flashObject2Dict(settingValue)
        self.params.preview(settingName, settingValue)

    def applySettings(self, settings, isCloseWnd):
        settings = flashObject2Dict(settings)
        applyMethod = self.params.getApplyMethod(settings)

        def confirmHandler(isOk):
            self.as_ConfirmationOfApplicationS(True)
            self.__commitSettings(settings, isOk, isCloseWnd)

        def confirmDelayedHandler(isOk):
            if isOk:
                confirmHandler(isOk)
            else:
                self.as_ConfirmationOfApplicationS(False)
                self.params.revert()

        if applyMethod == APPLY_METHOD.RESTART:
            DialogsInterface.showI18nConfirmDialog('graphicsPresetRestartConfirmation', confirmHandler)
        elif applyMethod == APPLY_METHOD.DELAYED:
            DialogsInterface.showI18nConfirmDialog('graphicsPresetDelayedConfirmation', confirmDelayedHandler)
        else:
            confirmHandler(True)

    def onWindowClose(self):
        self.params.revert()
        self.startVOIPTest(False)
        self.destroy()

    def onRecreateDevice(self):
        if self.__currentSettings and self.__currentSettings != self.params.getMonitorSettings():
            self.__currentSettings = self.params.getMonitorSettings()
            self.as_updateVideoSettingsS(self.__currentSettings)

    def useRedifineKeysMode(self, isUse):
        if self.__redefinedKeyModeEnabled:
            BigWorld.wg_setRedefineKeysMode(isUse)

    def autodetectQuality(self):
        return BigWorld.autoDetectGraphicsSettings()

    def startVOIPTest(self, isStart):
        LOG_DEBUG('Vivox test: %s' % str(isStart))
        rh = VOIP.getVOIPManager()
        rh.enterTestChannel() if isStart else rh.leaveTestChannel()
        return False

    @decorators.process('__updateCaptureDevices')
    def updateCaptureDevices(self):
        yield self.app.voiceChatManager.requestCaptureDevices()
        opt = g_settingsCore.options.getSetting(SOUND.CAPTURE_DEVICES)
        self.as_setCaptureDevicesS(opt.get(), opt.getOptions())

    def altVoicesPreview(self):
        setting = self.params.SETTINGS.getSetting(constants.SOUND.ALT_VOICES)
        if setting is not None:
            setting.playPreviewSound()
        return

    def isSoundModeValid(self):
        setting = self.params.SETTINGS.getSetting(constants.SOUND.ALT_VOICES)
        if setting is not None:
            return setting.isSoundModeValid()
        else:
            return False

    def showWarningDialog(self, dialogID, settings, isCloseWnd):

        def callback(isOk):
            if isOk:
                self.applySettings(settings, False)
            self.as_confirmWarningDialogS(isOk, dialogID)
            if isCloseWnd and isOk:
                self.onWindowClose()

        DialogsInterface.showI18nConfirmDialog(dialogID, callback)
	
    ###
    # Added Methods
    ###
	
    def handleUpdateResponseWrapper(self, modname, bool,message):
        self.flashObject.handleUpdateResponse(modname, bool,message)
        
    def patchAvailable(self, url, local, modname):
        #TODO rewrite to read saved data
        #print 'patchAvailable', url, local
        #o = urllib2.build_opener(ModSettingsUpdateHandler(self.handleUpdateResponseWrapper))
        #t = threading.Thread(target=o.open, args=(url,))
        #t.start()
        print 'patchAvailable called by:',modname
		
    def writeModDataToDisk(self, newdata, fromIngame=0):
        newdata = flashObject2Dict(newdata)
        ModSettingsAPI.mods = newdata #DICKES TODO: UNION statt replacement
        print '[ModsSettings] saving all configs to disk'#, newdata
        
        if not os.path.exists(ModSettingsAPI.MODSETTINGSPATH):
            os.makedirs(ModSettingsAPI.MODSETTINGSPATH)
        for modname in newdata:
            #print '[ModsSettings] saving mod',modname

            with open(ModSettingsAPI.MODSETTINGSPATH+modname+'.cfg', 'w') as outfile:
                # Settings are stored in [modname][2]
                json.dump(flashObject2Dict(newdata[modname][2]), outfile, sort_keys=True, indent=4, separators=(',', ': '),ensure_ascii=True)

            if(fromIngame==1):
                try:
                    #print "Callback", ModSettingsAPI.mods[modname]
                    if("callback" in flashObject2Dict(ModSettingsAPI.mods[modname][3])):
                        callbackFunction = flashObject2Dict(ModSettingsAPI.mods[modname][3])["callback"]
                        self.callRegisteredFunction(callbackFunction, None, flashObject2Dict(newdata[modname][2]))
                except Exception, err:
                    print "Error on callback for",modname,":", err
    
    def visitHomeURL(self, url):
        #print "visitHomeURL", url
        BigWorld.wg_openWebBrowser(url)

    def callRegisteredFunction(self, functionname, objName, value):
        #print ModSettingsAPI.registeredFunctions
        ModSettingsAPI.registeredFunctions[functionname](objName, value)

class ModSettingsUpdateHandler(urllib2.HTTPHandler):
    def __init__(self, func):
        urllib2.HTTPHandler.__init__(self)
        self.func = func
        print "MSAUpdateHandlerInit"
    '''
    def patch(self, json):
        print 'patching'
        if 'filemap' in json:
            print json['filemap']
            print json['filemap'][WoTVersion]
            for k in json['filemap'][WoTVersion]:
                print json['filemap'][WoTVersion][k]
                if hashlib.md5(open('res_mods\\'+WoTVersion+k, 'rb').read()).hexdigest() != json['filemap'][WoTVersion][k]['md5']:
                    print "hashes differ!"
                    filename = "res_mods/ModSettings/tmp/"+self.modname+'/'+WoTVersion+k
                    if not os.path.exists(os.path.dirname(filename)):
                        os.makedirs(os.path.dirname(filename))
                    f = urllib2.urlopen(json['filemap'][WoTVersion][k]['location'])
                    output = open(filename,'wb')
                    output.write(f.read())
                    output.close()
                    '''
    
    def http_response(self, req, response):
        #print "url: %s" % (response.geturl(),)
        #print "info: %s" % (response.info(),)
        #print 'response =', response
        resp = response.read()
        jsonobj = json.loads(resp)
        self.func(jsonobj)
        #liveversion = jsonobj['version']
        #if self.versiontuple(liveversion) > self.versiontuple(self.local):
        #    self.func(self.modname, True)
        #else:
        #    self.func(self.modname, False)
        #self.patch(jsonobj);
        return response
    
		


# The feature level of the modsettings api
# Developers should import it and check if the desired features are available before using it.
# The API level constant was introduced with version 1.1.0, so if it can't be imported, then the API Level is to be considered 0.
#
# Changes:
# 1:
#   - JSON Support
#   - Function Callbacks
#
# 0:
#   - Initial version, only external SWF's supported

MODSETTINGS_API_LEVEL = 1
		
# API Class for import by other developers.
class ModSettingsAPI():
    mods = {}
    MODSETTINGSPATH = 'res_mods/ModSettings/'
    registeredFunctions = {}
    modstati = {}
    
    def __init__(self, modname, authors, defaultsettings, layout={}, languageStrings={},localversion=None,updateurl=None,homeurl=None):
        #print '[ModSettings] loading mod ', modname
        self.modname = modname
        self.authors = authors
        self.defaultsettings = defaultsettings
        self.pendingSave = False
        self.layout = layout
        self.languageStrings = languageStrings
        self.localversion = localversion
        self.updateurl = updateurl
        self.homeurl = homeurl
        try:
            path = ModSettingsAPI.MODSETTINGSPATH +modname+'.cfg'
            if os.path.isfile(path):
                #print '[ModSettings] loading ',path
                with open(path) as data_file:    
                    self.settings = convert(json.load(data_file))
                    #print 'self.settings loaded'
                    
            else:
                print '[ModSettings] missing config file',path,'using default settings.'
                self.settings = {}

            self.modsettings = dict(defaultsettings.items() + self.settings.items())
            #print "self.modsettings="
            #print json.dumps(self.modsettings,sort_keys=True,indent=4,separators=(',',':'))
            ModSettingsAPI.mods[modname] = [self.modname, self.authors, self.modsettings, self.layout, self.languageStrings]
            if self.updateurl is not None:
                self.checkUpdate()
            else:
                print "mod is using deprecated methods:", self.modname
            
        except Exception, err:
            print "[ModSettings] exception init ",err
        
    def checkUpdate(self):
        print "getVersionFile"
        o = urllib2.build_opener(ModSettingsUpdateHandler(func=self.handleUpdateResponse))
        print "checking",self.updateurl
        t = threading.Thread(target=o.open, args=(self.updateurl,))
        t.start()
        
    def handleUpdateResponse(self,jsonobj):
        liveversion = jsonobj['version']
        if self.localversion is not None and versiontuple(liveversion) > versiontuple(self.localversion):
            ModSettingsAPI.modstati[self.modname] = "update available"
            print 'status set to update available'
        if 'filemap' in jsonobj:
            for k in json['filemap'][WoTVersion]:
                    print json['filemap'][WoTVersion][k]
                    if hashlib.md5(open('res_mods\\'+WoTVersion+k, 'rb').read()).hexdigest() != json['filemap'][WoTVersion][k]['md5']:
                        print "hashes differ, status=patching"
                        ModSettingsAPI.modstati[self.modname] = "patching"
                        filename = "res_mods/ModSettings/tmp/"+self.modname+'/'+WoTVersion+k
                        if not os.path.exists(os.path.dirname(filename)):
                            os.makedirs(os.path.dirname(filename))
                        f = urllib2.urlopen(json['filemap'][WoTVersion][k]['location'])
                        output = open(filename,'wb')
                        output.write(f.read())
                        output.close()
        if ModSettingsAPI.modstati[self.modname] == "patching":
            self.patchbatch()
    def patchbatch(self):
        print 'patchbatch'
    def write(self):
        if not os.path.exists(ModSettingsAPI.MODSETTINGSPATH):
            os.makedirs(ModSettingsAPI.MODSETTINGSPATH)
        with open(ModSettingsAPI.MODSETTINGSPATH+self.modname+'.cfg', 'w') as outfile:
            json.dump(self.modsettings, outfile, sort_keys=True, indent=4, separators=(',', ': '),ensure_ascii=True)

    # This allows to register functions that can be used as callbacks
    # The name should start with your own Modname, otherwise there might be name conflicts.
    def registerFunction(self, name, function):
        self.registeredFunctions[name] = function
    
def convert(input):
    if isinstance(input, dict):
        return {convert(key): convert(value) for key, value in input.iteritems()}
    elif isinstance(input, list):
        return [convert(element) for element in input]
    elif isinstance(input, unicode):
        return input.encode('utf-8')
    else:
        return input
        
        
def versiontuple(v):
    return tuple(map(int, (v.split("."))))


# Default Settings for our own Mod Panel.

print "[ModSettings] initializing"

WoTVersion = ResMgr.openSection(VERSION_FILE_PATH).readString('version')
WoTVersion = WoTVersion[2:-5]

defset = {
    "FlashSettingsFile" : "ModSettingsPanel.swf",
    "language" : helpers.getClientLanguage()
}
ModSettingsAPI("ModSettings", "4lCapwn, CS2001", defset)
