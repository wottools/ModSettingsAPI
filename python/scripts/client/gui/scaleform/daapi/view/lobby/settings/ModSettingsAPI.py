import json
import urllib2
import threading
import os
import helpers
import sys
import traceback
from gui import SystemMessages
from gui.shared.utils import flashObject2Dict
import account_helpers
import threading
import BigWorld
from ModSettingsAPIUpdater import ModSettingsAPIUpdaterInstance

VERSION_FILE_PATH = "../version.xml"

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

MODSETTINGS_API_LEVEL = 2
		
# API Class for import by other developers.
class ModSettingsAPI():
    mods = {}
    MODSETTINGSPATH = 'res_mods/ModSettings/'
    registeredFunctions = {}
    
    
    def __init__(self, modname, authors, defaultsettings, layout={}, languageStrings={},localversion=None,updateurl="",homeurl=None):
        #print '[ModSettingsAPI]['+modname+'] initializing'
        self.modname = modname
        self.authors = authors
        self.defaultsettings = defaultsettings
        self.pendingSave = False
        self.layout = layout
        self.languageStrings = languageStrings
        self.localversion=localversion
        self.writeLock = threading.Lock()
        
        try:
            path = ModSettingsAPI.MODSETTINGSPATH +modname+'.cfg'
            if os.path.isfile(path):
                #print '[ModSettings] loading ',path
                with open(path) as data_file:
                    try:
                        self.settings = convert(json.load(data_file))
                        if not isinstance(self.settings, dict):
                            print "[ModSettingsAPI]["+self.modname+"] cannot parse json file- json.load returned no dict but "+str(type(self.settings))
                            self.settings = {}
                    except:
                        print "[ModSettingsAPI]["+self.modname+"] cannot parse json file"
                        print sys.exc_info()[0]
                        print sys.exc_info()[1]
                        traceback.print_tb(sys.exc_info()[2])
                        self.settings = {}
                    #print 'self.settings loaded'
                    
            else:
                #print '[ModSettingsAPI] missing config file',path,'using default settings.'
                self.settings = {}

            self.modsettings = dict(defaultsettings.items() + self.settings.items())
            
            
            
            
            
            flashcopy = {}
            flashcopy['modname'] = modname
            flashcopy['authors'] = authors
            flashcopy['defaultsettings'] = defaultsettings
            flashcopy['pendingSave'] = False
            flashcopy['layout'] = layout
            flashcopy['languageStrings'] = languageStrings
            flashcopy['modsettings'] = self.modsettings
            flashcopy['localversion'] = self.localversion
            if modname in ModSettingsAPI.mods:
                print "[ModSettingsAPI]["+modname+"] has already been initialized"
            else:
                pass#"ModSettingsAPI["+modname+"] is now inserted for the 'first time' "
            ModSettingsAPI.mods[modname] = flashcopy
            self.updater = ModSettingsAPIUpdaterInstance(url=updateurl,modname=self.modname,msa=ModSettingsAPI,lversion=localversion)
            
        except:
            print "[ModSettingsAPI] exception init "
            print sys.exc_info()[0]
            print sys.exc_info()[1]
            traceback.print_tb(sys.exc_info()[2])
        
    def write(self):
        self.writeLock.acquire()
        try:
            if not os.path.exists(ModSettingsAPI.MODSETTINGSPATH):
                os.makedirs(ModSettingsAPI.MODSETTINGSPATH)
            with open(ModSettingsAPI.MODSETTINGSPATH+self.modname+'.cfg', 'w') as outfile:
                json.dump(self.modsettings, outfile, sort_keys=True, indent=4, separators=(',', ': '),ensure_ascii=True)
        except:
            print "[ModSettingsAPI]["+self.modname+"] write crashed"
            print sys.exc_info()[0]
            print sys.exc_info()[1]
            traceback.print_tb(sys.exc_info()[2])
        self.writeLock.release()

    # This allows to register functions that can be used as callbacks
    # The name should start with your own Modname, otherwise there might be name conflicts.
    def registerFunction(self, name, function):
        ModSettingsAPI.registeredFunctions[name] = function

class ModSettingsAPI2():
    def __init__(self, modname="yet another WoT mod", authors="unknown", defaultsettings={}, layout={}, languageStrings={},localversion=None,updateurl=None,homeurl=None):
        #print '[ModSettingsAPI2]['+modname+'] initializing'
        self.writeLock = threading.Lock()
        if updateurl==None:
            raise ValueError("updateurl must be set")
        if homeurl==None:
            raise ValueError("homeurl must be set")
        self.modname = modname
        self.authors = authors
        self.defaultsettings = defaultsettings
        self.pendingSave = False
        self.layout = layout
        self.languageStrings = languageStrings
        self.localversion=localversion
        self.firstinstance = True
        self.loadFromDisk()
        
        if self.firstinstance:
            self.updater = ModSettingsAPIUpdaterInstance(url=updateurl,modname=self.modname,msa=ModSettingsAPI,lversion=self.localversion)
            
        #print "&&&&&& added updater", ModSettingsAPI.mods[self.modname]['updater']
    def write(self):
        self.writeLock.acquire()
        try:
            if not os.path.exists(ModSettingsAPI.MODSETTINGSPATH):
                os.makedirs(ModSettingsAPI.MODSETTINGSPATH)
            with open(ModSettingsAPI.MODSETTINGSPATH+self.modname+'.cfg', 'w') as outfile:
                json.dump(self.modsettings, outfile, sort_keys=True, indent=4, separators=(',', ': '),ensure_ascii=True)
        except:
            print "[ModSettingsAPI2]["+self.modname+"] write crashed"
            print sys.exc_info()[0]
            print sys.exc_info()[1]
            traceback.print_tb(sys.exc_info()[2])
        self.writeLock.release()
    def loadFromDisk(self):
        try:
            if self.modname in ModSettingsAPI.mods:
                print "[ModSettingsAPI2]["+self.modname+"] has already been initialized"
                self.firstinstance = False
            path = ModSettingsAPI.MODSETTINGSPATH +self.modname+'.cfg'
            if os.path.isfile(path):
                with open(path) as data_file:
                    try:
                        self.settings = convert(json.load(data_file))
                        if not isinstance(self.settings, dict):
                            print "[ModSettingsAPI2]["+self.modname+"] cannot parse json file- json.load returned no dict but "+str(type(self.settings))
                            self.settings = {}
                    except:
                        print "[ModSettingsAPI2]["+self.modname+"] cannot parse json file"
                        print sys.exc_info()[0]
                        print sys.exc_info()[1]
                        traceback.print_tb(sys.exc_info()[2])
                        self.settings = {}
            else:
                #print '[ModSettingsAPI2]['+self.modname+'] using default settings'
                self.settings = {}
                
            
            self.modsettings = dict(self.defaultsettings.items() + self.settings.items())
            
            flashcopy = {}
            flashcopy['modname'] = self.modname
            flashcopy['authors'] = self.authors
            flashcopy['defaultsettings'] = self.defaultsettings
            flashcopy['pendingSave'] = False
            flashcopy['layout'] = self.layout
            flashcopy['languageStrings'] = self.languageStrings
            flashcopy['modsettings'] = self.modsettings
            flashcopy['localversion'] = self.localversion
            if not self.firstinstance:
                flashcopy['updaterstate'] = ModSettingsAPI.mods[self.modname]['updaterstate']
            ModSettingsAPI.mods[self.modname] = flashcopy
            
        except:
            print "[ModSettingsAPI2]["+self.modname+"] loadFromDisk crashed"
            print sys.exc_info()[0]
            print sys.exc_info()[1]
            traceback.print_tb(sys.exc_info()[2])
        self.settings = {}

    def registerFunction(self, name, function):
        ModSettingsAPI.registeredFunctions[name] = function
       
def convert(input):
    if isinstance(input, dict):
        return {convert(key): convert(value) for key, value in input.iteritems()}
    elif isinstance(input, list):
        return [convert(element) for element in input]
    elif isinstance(input, unicode):
        return input.encode('utf-8')
    else:
        return input
        
        
        
def initHooks():
    #add MSA to module SettingsWindow for easy backward compability
    from gui.Scaleform.daapi.view.lobby.settings import SettingsWindow as tmp
    tmp.ModSettingsAPI = ModSettingsAPI
    tmp.MODSETTINGS_API_LEVEL = MODSETTINGS_API_LEVEL
    tmp.SettingsWindow.handleUpdateResponseWrapper = handleUpdateResponseWrapper
    tmp.SettingsWindow.patchAvailable = patchAvailable
    tmp.SettingsWindow.writeModDataToDisk = writeModDataToDisk
    tmp.SettingsWindow.visitHomeURL = visitHomeURL
    tmp.SettingsWindow.callRegisteredFunction = callRegisteredFunction
    tmp.SettingsWindow.pushMSAUpdaterState = pushMSAUpdaterState

    
    tmp.SettingsWindow.getMSAUpdaterState = getMSAUpdaterState
    #hook functions
    ModSettingsAPI.getsettings_orig = tmp.SettingsWindow._SettingsWindow__getSettings
    tmp.SettingsWindow._SettingsWindow__getSettings = myGetSettings
    

def initPostHooks():
    global myGetPlayerDatabaseID_orig
    myGetPlayerDatabaseID_orig = account_helpers.getPlayerDatabaseID
    account_helpers.getPlayerDatabaseID = myGetPlayerDatabaseID
    
#SettingsWindow's extended functionality
def handleUpdateResponseWrapper(self, modname, bool):
    self.flashObject.handleUpdateResponse(modname, bool)
    
def patchAvailable(self, url, local, modname):
    #print 'patchAvailable', url, local
    try:
        self.handleUpdateResponseWrapper(modname,self.getMSAUpdaterState(modname))
    except:
        print "[ModSettingsAPI2]["+modname+"] patchavailable crashed"
        print sys.exc_info()[0]
        print sys.exc_info()[1]
        traceback.print_tb(sys.exc_info()[2])
    
def writeModDataToDisk(self, newdata, fromIngame=0):
    newdata = flashObject2Dict(newdata)
    #print "received ModData from flash:"
    #print newdata
    #ModSettingsAPI.mods = newdata #DICKES TODO: UNION statt replacement
    for key in ModSettingsAPI.mods:
        #print 'saving mod '+key
        ModSettingsAPI.mods[key] = newdata[key]
    #print '[ModsSettings] saving all configs to disk'#, newdata
    
    if not os.path.exists(ModSettingsAPI.MODSETTINGSPATH):
        os.makedirs(ModSettingsAPI.MODSETTINGSPATH)
    for modname in newdata:
        #print '[ModsSettings] saving mod',modname
        with open(ModSettingsAPI.MODSETTINGSPATH+modname+'.cfg', 'w') as outfile:
            # Settings are stored in [modname][2]
            json.dump(flashObject2Dict(newdata[modname]['modsettings']), outfile, sort_keys=True, indent=4, separators=(',', ': '),ensure_ascii=True)
        if(fromIngame==1):
            try:
                #print "Callback", ModSettingsAPI.mods[modname]
                if("callback" in flashObject2Dict(ModSettingsAPI.mods[modname]['layout'])):
                    callbackFunction = flashObject2Dict(ModSettingsAPI.mods[modname]['layout'])["callback"]
                    self.callRegisteredFunction(callbackFunction, None, flashObject2Dict(newdata[modname]['modsettings']))
            except Exception, err:
                print "Error on callback for",modname,":", err

    
def visitHomeURL(self, url):
    #print "visitHomeURL", url
    BigWorld.wg_openWebBrowser(url)

def callRegisteredFunction(self, functionname, objName, value):
    #print ModSettingsAPI.registeredFunctions
    ModSettingsAPI.registeredFunctions[functionname](objName, value)
    
def pushMSAUpdaterState(self, modname,state):
    self.flashObject.handleMSAUpdaterPushState(modname, bool)
    
def getMSAUpdaterState(self, modname):
    if ModSettingsAPI.mods['ModSettings']['modsettings']['debugMode']:
        print "getMSAUpdaterState",modname
        print ModSettingsAPI.mods[modname]
    return ModSettingsAPI.mods[modname]['updaterstate']

#hooks
def myGetSettings(self):
    t = ModSettingsAPI.getsettings_orig(self)
    t['ModSettings'] = ModSettingsAPI.mods
    return t
    
def myGetPlayerDatabaseID():
    #print "######myGetPlayerDatabaseID call"
    val=-1
    val = myGetPlayerDatabaseID_orig()
    try:
        if 'userid' not in ModSettingsAPI.mods['ModSettings']['modsettings'] or ModSettingsAPI.mods['ModSettings']['modsettings']['userid'] != val:
            #print "db change"
            if val>0:
                ModSettingsAPI.mods['ModSettings']['modsettings']['userid'] = val
                writeMod('ModSettings',ModSettingsAPI.mods['ModSettings']['modsettings'])
    except:
        print "[ModSettingsAPI] myGetPlayerDatabaseID crashed"
        print sys.exc_info()[0]
        print sys.exc_info()[1]
        traceback.print_tb(sys.exc_info()[2])
    #print "returning "+str(val)
    return val
    
#MSA functions
def writeMod(modname, data):
    #print "writemod "+modname
    try:
        if not os.path.exists(ModSettingsAPI.MODSETTINGSPATH):
            os.makedirs(ModSettingsAPI.MODSETTINGSPATH)
        with open(ModSettingsAPI.MODSETTINGSPATH+modname+'.cfg', 'w') as outfile:
                json.dump(data, outfile, sort_keys=True, indent=4, separators=(',', ': '),ensure_ascii=True)
    except:
        print "[ModSettingsAPI] writeMod crashed at"+modname
        print sys.exc_info()[0]
        print sys.exc_info()[1]
        traceback.print_tb(sys.exc_info()[2])
        
    
    
#print sys.modules['gui.Scaleform.daapi.view.lobby.settings.SettingsWindow'] 
initHooks()

import ResMgr
a = ResMgr.openSection(VERSION_FILE_PATH).readString('version')
#     v.0.9.3 Common Test #30
a = a.split('#')[0][2:-1]
#print a
#ModSettingsAPI.WoTVersion = WoTVersion[2:-5]
ModSettingsAPI.WoTVersion = a
#print "[ModSettingsAPI] fetching updates for",ModSettingsAPI.WoTVersion

defset = {
    "FlashSettingsFile" : "ModSettingsPanel.swf",
    "language" : helpers.getClientLanguage(),
    "debugMode" : False
}
msa = ModSettingsAPI2(modname="ModSettings", authors="4lCapwn, CS2001",localversion="1.2.4", defaultsettings=defset,updateurl="http://mods.wot.tools/files/MSA/MSA.php",homeurl="http://forum.worldoftanks.eu/index.php?/topic/363138-092-modsettings-api-v115-beta-release-by-4lcapwn-and-cs2001/")
initPostHooks()

print "[ModSettings] initialized"