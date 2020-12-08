@echo off
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars64.bat"

echo Swtich to x64 build env
cd %~dp0\..\luajit2\src
call msvcbuild.bat gc64 static
cd ..\..

md luac\bin_luajit\64
copy /Y luajit2\src\luajit.exe luac\bin_luajit\64\luajit.exe
xcopy /I /E /Y luajit2\src\jit luac\bin_luajit\64\jit
del /Q luac\bin_luajit\64\jit\.gitignore
pause