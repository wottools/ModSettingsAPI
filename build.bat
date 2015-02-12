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



REM export own compilate
echo extracting MSAClasses.swf
RABCDAsm\abcexport tmp\MSAClasses.swf
RABCDasm\RABCDAsm tmp\MSAClasses-0.abc


echo Build finished.