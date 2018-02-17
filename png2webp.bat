@echo off
Rem Opens git bash and runs the .bashrc function: png2webp
Rem The functions accepts no args.. it uses a -lossless flag behind the scene
Rem Note: It creates the correct parentfolder(img_folder) and subfolders (jpg,webp, etc) if none exists
Rem Author: 	Mats Wikmar
Rem Webpage: 	bviking.se
Rem Github:	mow-github
Rem Email: 	matwik@gmail.com

echo "|          __________       .__ __   .__				|"                          
echo "|          \______   \___  _|__|  | _|__| ____    ____            	|"
echo "|  ______   |    |  _/\  \/ /  |  |/ /  |/    \  / ___\    ______ 	|"
echo "| /_____/   |    |   \ \   /|  |    <|  |   |  \/ /_/  >  /_____/ 	|"
echo "|           |______  /  \_/ |__|__|_ \__|___|  /\___  /           	|"
echo "|                  \/               \/       \//_____/            	|"
echo "|Author:	Mats Wikmar						|"
echo "|Webpage:	bviking.se						|"
echo "|Github:	mow-github						|"
echo "|Email:	matwik@gmail.com					|"
echo.
echo "|                    ___               _           			|"
echo "|                   |__ \             | |          			|"
echo "|  _ __  _ __   __ _   ) |_      _____| |__  _ __  			|"
echo "| | '_ \| '_ \ / _` | / /\ \ /\ / / _ \ '_ \| '_ \ 			|"
echo "| | |_) | | | | (_| |/ /_ \ V  V /  __/ |_) | |_) |			|"
echo "| | .__/|_| |_|\__, |____| \_/\_/ \___|_.__/| .__/ 			|"
echo "| | |           __/ |                       | |    			|"
echo "| |_|          |___/                        |_| 			|"
echo.
echo [No folders yet ? - 1: Press Enter, 2: Add your pngs, 3: Run this again]
echo.
pause
"C:\Program Files\Git\bin\sh.exe" --login -i -c "png2webp"
cls