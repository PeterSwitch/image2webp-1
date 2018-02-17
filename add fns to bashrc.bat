@echo off

set "BASH_PATH_FILE=C:\Users\%USERNAME%\.bashrc"
set "FIND_STRING=function jpg2webp"

Setlocal EnableDelayedExpansion
set "CWEBP_LINE_DEQUOTED_JPG=cwebp -q "$1" "$file" -o img_folder/webp/`basename ${file%%.jpg}`.webp"
set CWEBP_LINE_DEQUOTED_PNG="cwebp -lossless "$file" -o img_folder/webp/`basename ${file%%.png}`.webp"

echo Looking for the JPG FUNCTION: %FIND_STRING% in %BASH_PATH_FILE%
find /c "%FIND_STRING%" %BASH_PATH_FILE% 
if %errorlevel% equ 1 goto notfound
	echo The function already exists in %BASH_PATH_FILE%.. no configs are necessary.. thank you!
goto jpg_done

:notfound
	echo The file and/or function does NOT exists in %BASH_PATH_FILE%.. appends the correct function.. 1sec..

echo %FIND_STRING%() {										>> %BASH_PATH_FILE%
echo.	mkdir -p img_folder\\{jpg,webp}								>> %BASH_PATH_FILE%
echo.	for file in img_folder/jpg/*								>> %BASH_PATH_FILE%
echo.		do										>> %BASH_PATH_FILE%
echo.  			!CWEBP_LINE_DEQUOTED_JPG!						>> %BASH_PATH_FILE%
echo.		done										>> %BASH_PATH_FILE%
echo.		start img_folder\\webp								>> %BASH_PATH_FILE%
echo.		exit										>> %BASH_PATH_FILE%
echo. }												>> %BASH_PATH_FILE%

	echo.
	echo ..done.. The function has been added.. thank you!

goto jpg_done

:jpg_done

set "FIND_STRING=function png2webp"
echo.
echo Looking for the PNG FUNCTION: %FIND_STRING% in %BASH_PATH_FILE%

find /c "%FIND_STRING%" %BASH_PATH_FILE% 
if %errorlevel% equ 1 goto png_notfound
	echo The function already exists in %BASH_PATH_FILE%.. no configs are necessary.. thank you!
goto png_done

:png_notfound
	echo The file and/or function does NOT exists in %BASH_PATH_FILE%.. appends the correct function.. 1sec..

echo %FIND_STRING%() {										>> %BASH_PATH_FILE%
echo.	mkdir -p img_folder\\{png,webp}								>> %BASH_PATH_FILE%
echo.	for file in img_folder/png/*								>> %BASH_PATH_FILE%
echo.		do										>> %BASH_PATH_FILE%
echo.  			!CWEBP_LINE_DEQUOTED_PNG!						>> %BASH_PATH_FILE%
echo.		done										>> %BASH_PATH_FILE%
echo.		start img_folder\\webp								>> %BASH_PATH_FILE%
echo.		exit										>> %BASH_PATH_FILE%
echo. }												>> %BASH_PATH_FILE%

	echo.
	echo ..done.. The function has been added.. thank you!

goto png_done

:png_done

pause