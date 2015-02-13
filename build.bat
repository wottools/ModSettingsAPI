@echo off

REM
REM Important: This build script is made for a german windows version.
REM Due to limitations in xcopy we have to pass arguments to it using echo
REM This echo tells xcopy that the file that it's copying is a (D)atei, so if you're using an english windows, you'll have to change all "echo d" to "echo f".
REM build.bat


echo ###################################################
echo # Building: ModSettings API by 4lCapwn and CS2001 #
echo ###################################################
echo 

echo Setting Envoirement Variables
call setEnv

REM FLASH

REM export own compilate.
echo extracting MSAClasses.swf
RABCDAsm\abcexport tmp\MSAClasses.swf
RABCDasm\RABCDAsm tmp\MSAClasses-0.abc
rm tmp\MSAClasses-0.abc

REM export vanilla file.
echo extracting settingsWindow.swf
copy as3\settingsWindow.swf tmp\settingsWindow.swf
RABCDAsm\abcexport tmp\settingsWindow.swf
RABCDasm\RABCDAsm tmp\settingsWindow-0.abc
rm tmp\settingsWindow-0.abc

REM move and include class
patch tmp\settingsWindow-0\settingsWindow-0.main.asasm as3\sw.patch
copy tmp\MSAClasses-0\MSASettingsWindowUI.script.asasm tmp\settingsWindow-0\MSASettingsWindowUI.script.asasm
copy tmp\MSAClasses-0\MSASettingsWindowUI.class.asasm tmp\settingsWindow-0\MSASettingsWindowUI.class.asasm

REM merge class into hierarchy
patch tmp\settingsWindow-0\SettingsWindowUI.class.asasm as3\SWUI.patch

REM re-assemble settingsWindow.swf
echo assembling settingsWindow.swf
RABCDasm\RABCAsm tmp\settingsWindow-0\settingsWindow-0.main.asasm
RABCDasm\abcreplace tmp\settingsWindow.swf 0 tmp\settingsWindow-0\settingsWindow-0.main.abc

REM PYTHON


REM APIS

echo Build finished.