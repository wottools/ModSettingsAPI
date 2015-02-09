import sys
import traceback
import struct
import Queue
import threading
import importlib
import types
import sys,imp

class HookTypes:
    PREHOOK = 0
    POSTHOOK = 1
    REPLACE = 2

class HookUnitItem:
    def __init__(self, originalfunctionname, originalFunction, ownFunction, hooktype=HookTypes.PREHOOK,classmethod=True):
        self.originalFunction = originalFunction
        self.ownFunction = ownFunction
        self.hooktype = hooktype
        self.classmethod = classmethod
class HookUnit:
    hooks = {}

def injecthook(originalmodulename, originalfunctionname,replacement,classname=None,hooktype=HookTypes.PREHOOK):
    if classname is not None and  originalfunctionname.startswith("__"):
        originalfunctionname = "_"+classname+originalfunctionname
    token = originalmodulename +"."+ xstr(classname)+ originalfunctionname +"|"+ str(replacement)
    if not originalmodulename in sys.modules:
        print '[HookUnit] module'+originalmodulename+' not found, importing'
        mod = importlib.import_module(originalmodulename)
    if classname is not None:
        tclass = getattr(sys.modules[originalmodulename], classname)
        origfunction = getattr(tclass,originalfunctionname)
    else:
        origfunction = getattr(sys.modules[originalmodulename], originalfunctionname)
    hookitem = HookUnitItem(originalfunctionname,origfunction,replacement,hooktype=hooktype,classmethod=classname is not None)
    HookUnit.hooks[token] = hookitem
    if classname is not None:
        hand = createHandler('"'+token+'"')
        setattr(tclass,originalfunctionname,hand)
    else:
        #print 'notimplemented'
        #setattr(sys.modules[originalmodulename],originalfunctionname,execute)
        hand = createHandler('"'+token+'"')
        setattr(sys.modules[originalmodulename],originalfunctionname,hand)
def xstr(s):
    if s is None:
        return ''
    return str(s) + "."

def createHandler(name):
    exec("""def dynfunc(*args,**kwargs):
        return handleHookCall("""+name+""",*args,**kwargs)""")
    return dynfunc
    
def handleHookCall(*args,**kwargs):
    token = args[0]
    newargs = args[1:]
    hui = HookUnit.hooks[token]
    val = None
    try:
        if hui.hooktype == HookTypes.PREHOOK:
            try:
                hui.ownFunction(*newargs,**kwargs)
            except:
                print "[HookUnit] PREHOOK crashed"
                print sys.exc_info()[0]
                print sys.exc_info()[1]
                traceback.print_tb(sys.exc_info()[2])
            val = hui.originalFunction(*newargs,**kwargs)
        elif hui.hooktype == HookTypes.POSTHOOK:
            val = hui.originalFunction(*newargs,**kwargs)
            try:
                val = hui.ownFunction(val,*newargs,**kwargs)
            except:
                print "[HookUnit] POSTHOOK crashed"
                print sys.exc_info()[0]
                print sys.exc_info()[1]
                traceback.print_tb(sys.exc_info()[2])
        elif hui.hooktype == HookTypes.REPLACE:
            try:
                val = hui.ownFunction(*newargs,**kwargs)
            except:
                print "[HookUnit] REPLACEHOOK crashed"
                print sys.exc_info()[0]
                print sys.exc_info()[1]
                traceback.print_tb(sys.exc_info()[2])
    except:
        print "[HookUnit] handleClassHookCall crashed"
        print sys.exc_info()[0]
        print sys.exc_info()[1]
        traceback.print_tb(sys.exc_info()[2])

    return val
    
    
def createClassFuncHandler(name):
    exec("""def dynfunc(*args,**kwargs):
        return handleClassHookCall("""+name+""",*args,**kwargs)""")
    return dynfunc
    
    
    
def handleClassHookCall(*args,**kwargs):
    token = args[0]
    selff = args[1]
    newargs = args[2:]
    hui = HookUnit.hooks[token]
    try:
        if hui.hooktype == HookTypes.PREHOOK:
            hui.ownFunction(selff,*newargs,**kwargs)
            val = hui.originalFunction(selff,*newargs,**kwargs)
        elif hui.hooktype == HookTypes.POSTHOOK:
            val = hui.originalFunction(selff,*newargs,**kwargs)
            val = hui.ownFunction(selff,val,*newargs,**kwargs)
        elif hui.hooktype == HookTypes.REPLACE:
            val = hui.ownFunction(selff,*newargs,**kwargs)
    except:
        print "[HookUnit] handleClassHookCall crashed"
        print sys.exc_info()[0]
        print sys.exc_info()[1]
        traceback.print_tb(sys.exc_info()[2])

    return val
        
