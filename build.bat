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

rm -f "bin\SettingsWindowC-0.abc"
rm -rf "bin\SettingsWindowC-0"
rm -f "bin\SettingsWindow.pyc"
rm -f "bin\SettingsWindow.swf"

echo abcexport from compiled swf...
RABCDAsm\abcexport "bin\SettingsWindowC.swf"

xcopy "originalFiles\settingsWindow.swf" "bin\" /Y

echo abcreplacing into original SWF...
RABCDAsm\abcreplace "bin\settingsWindow.swf" 0 "bin\SettingsWindowC-0.abc"

echo "%ModSettingsOutputFolder%\res_mods\%WoTVersion%\gui\flash\"
xcopy "bin\SettingsWindow.swf" "%ModSettingsOutputFolder%\res_mods\%WoTVersion%\gui\flash\" /Y
xcopy "bin\ModSettingsPanel.swf" "%ModSettingsOutputFolder%\res_mods\%WoTVersion%\gui\flash\" /Y

echo Compiling Python files...

REM Compile new files.
python2.7 compilePython.py python\scripts\client\gui\scaleform\daapi\view\lobby\settings\__init__.py bin\__init__.pyc
python2.7 compilePython.py python\scripts\client\gui\scaleform\daapi\view\lobby\settings\ModSettingsAPI.py bin\ModSettingsAPI.pyc
python2.7 compilePython.py python\scripts\client\gui\scaleform\daapi\view\lobby\settings\ModSettingsAPIUpdater.py bin\ModSettingsAPIUpdater.pyc

REM Copy files to new location.
xcopy "bin\__init__.pyc" "%ModSettingsOutputFolder%\res_mods\%WoTVersion%\scripts\client\gui\scaleform\daapi\view\lobby\settings\" /Y
xcopy "bin\ModSettingsAPI.pyc" "%ModSettingsOutputFolder%\res_mods\%WoTVersion%\scripts\client\gui\scaleform\daapi\view\lobby\settings\" /Y
xcopy "bin\ModSettingsAPIUpdater.pyc" "%ModSettingsOutputFolder%\res_mods\%WoTVersion%\scripts\client\gui\scaleform\daapi\view\lobby\settings\" /Y

echo Build finished.