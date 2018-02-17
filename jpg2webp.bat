@echo off
Rem Opens git bash and runs the .bashrc function: jpg2webp
Rem The functions accepts one numeric value: 0-100 (quality) and 80 by default
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
echo "|    _             ___               _           			|"
echo "|   (_)           |__ \             | |          			|"
echo "|    _ _ __   __ _   ) |_      _____| |__  _ __  			|"
echo "|   | | '_ \ / _` | / /\ \ /\ / / _ \ '_ \| '_ \ 			|"
echo "|   | | |_) | (_| |/ /_ \ V  V /  __/ |_) | |_) |			|"
echo "|   | | .__/ \__, |____| \_/\_/ \___|_.__/| .__/ 			|"
echo "|  _/ | |     __/ |                       | |    			|"
echo "| |__/|_|    |___/                        |_|				|"
echo.
echo [No folders yet ? - 1: Press Enter, 2: Add your jpgs, 3: Run this again]
echo.

set arg1=80
set /p "arg1=Enter quality factor and [Enter], 0-100, [default is %arg1%]: "
"C:\Program Files\Git\bin\sh.exe" --login -i -c "jpg2webp %arg1%"
cls