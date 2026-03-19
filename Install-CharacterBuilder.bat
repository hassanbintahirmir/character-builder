@echo off
echo === Character Builder Installer ===
echo.

echo Downloading certificate...
curl -L -o "%TEMP%\CharacterBuilder.cer" "https://hassanbintahirmir.github.io/character-builder/CharacterBuilder.cer"

echo Installing certificate...
certutil -addstore "TrustedPublisher" "%TEMP%\CharacterBuilder.cer" >nul
certutil -addstore "Root" "%TEMP%\CharacterBuilder.cer" >nul

echo Downloading installer...
curl -L -o "%TEMP%\CB-Setup.exe" "https://hassanbintahirmir.github.io/character-builder/setup.exe"

echo Running installer...
start "" "%TEMP%\CB-Setup.exe"

echo Done.