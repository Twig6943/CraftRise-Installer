color a
cd "C:\Users\%USERNAME%\Downloads"
curl https://www.craftrise.com.tr/launcher/CraftRise.exe -o CraftRise.exe
cd "C:\Program Files (x86)"
mkdir CraftRise
move "C:\Users\%USERNAME%\Downloads\CraftRise.exe" "C:\Program Files (x86)\CraftRise"
cd "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs"
mkdir CraftRise
set "shortcutName=CraftRise.lnk"
set "targetPath=C:\Program Files (x86)\CraftRise\CraftRise.exe"
set "shortcutPath=C:\Users\Twig6843\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\CraftRise\%shortcutName%"

set "VBS_Script=%temp%\CreateShortcut.vbs"

:: Create the VBS script
echo Set oWS = WScript.CreateObject("WScript.Shell") > "%VBS_Script%"
echo sLinkFile = "%shortcutPath%" >> "%VBS_Script%"
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> "%VBS_Script%"
echo oLink.TargetPath = "%targetPath%" >> "%VBS_Script%"
echo oLink.Save >> "%VBS_Script%"

:: Execute the VBS script
cscript /nologo "%VBS_Script%"

:: Clean up the VBS script
del "%VBS_Script%"

echo Shortcut created successfully!
echo The installation is done press any key to close this window.
pause
