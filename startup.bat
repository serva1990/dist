timeout /t 5
start "" "c:\BTFS2.1\btfs_01-10_install.bat"
timeout /t 100
start "" "C:\Program Files\memreduct\memreduct.exe"
timeout /t 60
start "" "c:\users\administrator\appdata\roaming\uTorrent\uTorrent.exe"
timeout /t 2
start "" "C:\Program Files\Allway Sync\Bin\syncappw.exe"
timeout /t 2
cd C:\install\torrent-autoremove-tool-master
echo installing dependencies...
cd app
pip install -r requirements.txt
TIMEOUT /T 30
cd app
start python main.py
echo install and run block
cd C:\install\torrent-manager-main
TIMEOUT /T 30
start npm i && start node src/index.js
TIMEOUT /T 30
start

