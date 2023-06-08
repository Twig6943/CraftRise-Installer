color a
cd "C:\Users\%USERNAME%\Downloads"
curl https://www.craftrise.com.tr/launcher/CraftRise.exe -o CraftRise.exe
cd "C:\Program Files (x86)"
mkdir CraftRise
move "C:\Users\%USERNAME%\Downloads\CraftRise.exe" "C:\Program Files (x86)\CraftRise"
cd "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs"
mkdir CraftRise
move "C:\Users\%USERNAME%\Downloads\CraftRise.lnk" "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\CraftRise"
echo The installation is done press any key to close this window.
pause
