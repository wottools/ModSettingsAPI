import threading
import urllib2
import traceback
import json
import hashlib
import os
import os.path
import shutil
import sys
import account_helpers
#from gui.Scaleform.daapi.view.lobby.settings.ModSettingsAPI import ModSettingsAPI
#ip.addr == 178.63.97.122
class ModSettingsAPIUpdaterInstance:
    def __init__(self,url="",modname="yet another WoT mod",msa=None,lversion="1.0.0"):
        #init
        self.statelock = threading.Lock()
        self.updateurl=url
        self.modname=modname
        
        self.ModSettingsAPI = msa
        self.setState(UpdaterState.CHECKING)
        
        #TODO check localversion
        self.localversion = lversion
        
        #start
        updatethread = threading.Thread(target=self.checkForUpdates)
        updatethread.start()
        
    def checkForUpdates(self):
        #if self.ModSettingsAPI.mods['ModSettings']['modsettings']['debugMode']:
        
        try:
            #print "[ModSettingsAPIUpdaterInstance]["+self.modname+"] checking "+self.updateurl
            #check for update
            try:
                userid = self.ModSettingsAPI.mods['ModSettings']['modsettings']['userid']
            except:
                #print "[ModSettingsAPIUpdaterInstance] fallback -1"
                userid=-1
                
            #print "[ModSettingsAPIUpdaterInstance] checking "+str(userid)
            target = self.updateurl+"?userid="+str(userid)
            #print "urllib2.urlopen",target
            serverresponse = urllib2.urlopen(target)
            html = serverresponse.read()
            
            #parse json 
            jsonobj = json.loads(html)
            if self.ModSettingsAPI.mods['ModSettings']['modsettings']['debugMode']:
                print "[ModSettingsAPIUpdater] received json",jsonobj
            
            if 'filemap' in jsonobj:
                filesok = True
                patchok = True
                fmap = jsonobj['filemap'][self.ModSettingsAPI.WoTVersion]
                for filepath in fmap:
                    tfilepath = 'res_mods\\'+self.ModSettingsAPI.WoTVersion+filepath
                    localhash = ""
                    if os.path.isfile(tfilepath):
                        localhash = hashlib.md5(open(tfilepath, 'rb').read()).hexdigest()
                    if localhash != fmap[filepath]['md5']:
                        filesok = False
                        if self.ModSettingsAPI.mods['ModSettings']['modsettings']['debugMode']:
                            print "[ModSettingsAPIUpdaterInstance] "+filepath+" differs, start patch"
                        self.setState(UpdaterState.PATCHING)
                        tmpfile = "res_mods/ModSettings/tmp/"+self.modname+'/'+self.ModSettingsAPI.WoTVersion+filepath
                        filesuccess = False
                        for x in range(0, 3):
                            if not os.path.exists(os.path.dirname(tmpfile)):
                                os.makedirs(os.path.dirname(tmpfile))
                            #attempt to dl
                            dl = urllib2.urlopen(fmap[filepath]['location'])
                            tmpfilehandle = open(tmpfile,'wb')
                            tmpfilehandle.write(dl.read())
                            tmpfilehandle.close()
                            
                            checkhash = hashlib.md5(open(tmpfile, 'rb').read()).hexdigest()
                            if checkhash == fmap[filepath]['md5']:
                                filesuccess=True
                                break
                        if not filesuccess:
                            self.setState(UpdaterState.FAILURE)
                            break
                            
                if filesok:
                    if not self.localversion and jsonobj[version]:
                        self.ModSettingsAPI.mods[self.modname]['localversion'] = jsonobj['version']
                    self.setState(UpdaterState.UP_TO_DATE)
                elif patchok: #TODO crycatch
                    recursive_overwrite("res_mods/ModSettings/tmp/"+self.modname+"/","res_mods")
                    if self.ModSettingsAPI.mods['ModSettings']['modsettings']['debugMode']:
                        print "[ModSettingsAPIUpdaterInstance] updated "+self.modname
                    self.setState(UpdaterState.PATCHING_FINISHED)
                    if not self.localversion and jsonobj[version]:
                        self.ModSettingsAPI.mods[self.modname]['localversion'] = jsonobj['version']
            else:
                if self.ModSettingsAPI.mods['ModSettings']['modsettings']['debugMode']:
                    print "!-!-! comparing "+self.localversion+ "  with "+jsonobj['version']
                if versiontuple(self.localversion) >= versiontuple(jsonobj['version']):
                    self.setState(UpdaterState.UP_TO_DATE)
                else:
                    self.setState(UpdaterState.UPDATE_AVAILABLE)
            
        except:
            if self.ModSettingsAPI.mods['ModSettings']['modsettings']['debugMode']:
                print "[ModSettingsAPIUpdaterInstance] crashed"
                print sys.exc_info()[0]
                print sys.exc_info()[1]
                traceback.print_tb(sys.exc_info()[2])
                self.setState(UpdaterState.FAILURE)
            
    def readMSAV(self):
        #TODO
        pass
        
    def writeMSAV(self):
        #TODO
        pass
        
    def getState(self):
        self.statelock.acquire()
        tstate = self.state
        self.statelock.release()
        if self.ModSettingsAPI.mods['ModSettings']['modsettings']['debugMode']:
            print '################getState returning '+str(tstate)
        return tstate
        
    def setState(self,newstate):
        self.statelock.acquire()
        self.state = newstate
        if self.ModSettingsAPI.mods['ModSettings']['modsettings']['debugMode']:
            print "[ModSettingsAPIUpdaterInstance] "+self.modname+" set state "+str(self.state)
        self.ModSettingsAPI.mods[self.modname]['updaterstate'] = newstate
        #self.ModSettingsAPIpushMSAUpdaterState(self, modname,state)
        self.statelock.release()
        #TODO push
        

    
class UpdaterState(object):
    #think about cleaning up old data state
    CHECKING = 1                #initial
    UPDATE_AVAILABLE = 2        #updateurl given, but no filemap
    PATCHING = 3                #updateurl given, patching in progress
    PATCHING_FINISHED = 4       #patching finished
    UP_TO_DATE = 5              #version was ok at startup
    FAILURE = 6                 #something crashed while updating/checking
    UNKNOWN = 7
    
def recursive_overwrite(src, dest, ignore=None):
    if os.path.isdir(src):
        if not os.path.isdir(dest):
            os.makedirs(dest)
        files = os.listdir(src)
        if ignore is not None:
            ignored = ignore(src, files)
        else:
            ignored = set()
        for f in files:
            if f not in ignored:
                recursive_overwrite(os.path.join(src, f), 
                                    os.path.join(dest, f), 
                                    ignore)
    else:
        shutil.copyfile(src, dest)
    
def versiontuple(v):
    return tuple(map(int, (v.split("."))))