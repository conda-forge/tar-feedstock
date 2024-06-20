copy "%RECIPE_DIR%\build.sh" .
set PREFIX=%LIBRARY_PREFIX:\=/%
set SRC_DIR=%SRC_DIR:\=/%
set MSYSTEM=MINGW%ARCH%
set MSYS2_PATH_TYPE=inherit
set CHERE_INVOKING=1

bash -lc "./build.sh"
if %ERRORLEVEL% neq 0 exit /b %ERRORLEVEL%

exit /b 0
