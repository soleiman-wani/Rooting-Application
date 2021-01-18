<!-- :: Batch section
@echo off
Title THE Android Rooting Tool
setlocal enabledelayedexpansion
color 0A
mode con:cols=70 lines=25
cls
echo.
echo.
echo Author: P11_MIET_2017 { Soleiman : Summit : Waheed : Waseem : Kamil }
echo.
echo Version : v1
echo.
echo.
echo	 ::-------------------------------------------------------------::
echo	 ::-                     THE Android One Rooting Tool          -::
echo	 ::-------------------------------------------------------------::
echo	 " __________               __    _____.___.                     "
echo	 " \______   \ ____   _____/  |_  \__  |   | ____  __ _________  "
echo	 "  |       _//  _ \ /  _ \   __\  /   |   |/  _ \|  |  \_  __ \ "
echo	 "  |    |   (  <_> |  <_> )  |    \____   (  <_> )  |  /|  | \/ "
echo	 "  |____|_  /\____/ \____/|__|    / ______|\____/|____/ |__|    "
echo	 "         \/                      \/                            "
echo	 "           ________              .__               ._.         "
echo	 "           \______ \   _______  _|__| ____  ____   | |         "
echo	 "            |    |  \_/ __ \  \/ /  |/ ___\/ __ \  | |         "
echo	 "            |    `   \  ___/\   /|  \  \__\  ___/   \|         "
echo	 "           /_______  /\___  >\_/ |__|\___  >___  >  __         "
echo	 "                   \/     \/             \/    \/   \/         "
echo.
echo Choose from list which Device you want to root:
TIMEOUT /T 3 >nul
for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "HTAreply=%%a"

:choice
set /P c=IS YOUR DEVICE's BOOTLOADER(OEM) IS LOCKED[Y/N]?
if /I "%c%" EQU "Y" goto :caution
if /I "%c%" EQU "N" goto :root
goto :choice

:caution 
cls
echo.
echo.
echo	 --                   ``!XX! CAUTION !XX!``                     --
echo	 -----------------------------------------------------------------
echo.
echo.
echo   * We Are Not Responsible For Any Damage Caused To your Phone !
echo.
echo.
echo -------------------------------------------------------------
echo	                    !XX!``PREREQUISTS``!XX!
echo -------------------------------------------------------------
echo 	* Enable USB Debugging Under Developer Menu 
echo 	* Enable OEM Unlocking in Developer Menu
echo 	* Make Sure You Have Enough Charge In Your Battery 
echo 	* Install Proper Drivers ,If Mobile Is Not Detected
echo -------------------------------------------------------------
echo  " 	   ``` PRESS ANY KEY TO MOVE FORWARD ```	 "
pause>nul
cls

TREASURE\adb devices
echo.
echo  -------------------------------------------------------------
echo.
echo 	                      - INITIALISING -
echo.
echo  -------------------------------------------------------------
echo.
echo  	*Connect Your Phone Now In SWITCH ON MODE
echo.
echo  	*waiting for device
echo.
TREASURE\adb wait-for-device
echo. 
echo  	 *device found
echo.
TREASURE\adb reboot bootloader
echo.
echo  	 *rebooting TO Fastboot Mode
echo.
echo  		 ```~ This May Take Some Time ~```
cls

echo.
TREASURE\fastboot flashing unlock
echo 		~```Device will Reboot```~
echo.
echo 	* Enable USB Debugging Under Developer Menu
echo.
echo  "   ``` PRESS ANY KEY AFTER ENABLING USB DEBUGGING ```	 "
pause>nul

:root
cls
echo.
echo 	----------------------------------------
echo 	     -     1. ROOTING         -
echo 	----------------------------------------                   
echo.                   
echo 	 *Setting Up environment To Flash Root!
echo.

TREASURE\adb wait-for-device
TREASURE\adb reboot-bootloader                      
TREASURE\fastboot flash boot_a  %HTAreply%

cls
echo.
echo.
echo 	--------------------------------------------------
echo 	-************MOST IMPORTANT STEP*****************-
echo 	--------------------------------------------------
echo.
echo 		**Do NOT PRESS Any Key  
echo.
echo.
echo	  ```Keep Calm And Don't Touch the Device !```
echo.
echo. 
TREASURE\fastboot continue
cls

echo		           Everything Done !!!
echo.
echo.
echo   	   FIRST BOOT WILL TAKE 5-10 MINS ; DONT`T PANIC !!!!!!
echo.
echo  " 	   ```If Your device reboted press any key !```	 "
pause>nul
TREASURE\adb wait-for-device
TREASURE\adb install magisk.apk
echo.
echo 	     --IF SomeThing Went Wrong Run This TOOL Again---
echo.
echo  " 	   ``` PRESS ANY KEY TO MOVE FORWARD ```	 "
pause>nul

cls
echo.
echo.
echo.
echo 	----------------------------------------------
echo 	-        THANK YOU FOR USING OUR TOOL        -
echo 	----------------------------------------------
echo.
echo.
echo "___                      _                                     "
echo " ||_  _.._ |     _     _|__ ._     _o._  _   _    ._ _|_ _  _ |"
echo " || |(_|| ||< \/(_)|_|  |(_)|  |_|_>|| |(_| (_)|_||   |_(_)(_)|"
echo "              /                          _|                    "
echo.
echo.
echo  " 	   ``` PRESS ANY KEY TO EXIT !!! :-) ```	 "
pause>nul

goto :EOF
-->

<HTML>
<HEAD>
<HTA:APPLICATION SCROLL="no" SYSMENU="no" >

<TITLE>Choose Your DEVICE !!</TITLE>

<SCRIPT language="JavaScript">

window.resizeTo(900,700);
function closeHTA(reply){
   var fso = new ActiveXObject("Scripting.FileSystemObject");
   fso.GetStandardStream(1).WriteLine(reply);
   window.close();
}

</SCRIPT>
<style>
body {
    margin: 0;
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: black;
}

.neon {
    position: relative;
    overflow: hidden;
    filter: brightness(200%);
}

.text {
    background-color: black;
    color: rgb(207, 245, 70);
    font-size: 70px;
    font-weight: bold;
    font-family: "Brush Script MT", cursive;
    text-transform: uppercase;
    position: relative;
    user-select: none;
}


.button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
</style>
</HEAD>
<BODY>
<div class="neon">
  <span class="text" data-text="Choose The Device !">Choose The Device !</span>
  <span class="gradient"></span>
  <span class="spotlight"></span>
</div>
   <button class="button" onclick="closeHTA('jasmine_spourt.img');">MI A2</button>
   <button class="button" onclick="closeHTA('riva.img');">Redmi 5A</button>
   <button class="button" onclick="closeHTA('begonain.img');">REDMI NOTE 8 PRO</button>
</BODY>
</HTML>

