mkdir build64_54 & pushd build64_54
cmake -DLUA_VERSION=5.4.2 -G "Visual Studio 15 2017 Win64" ..
popd
cmake --build build64_54 --config Release
md bin_lua54\64
copy /Y build64_54\Release\lua.exe bin_lua54\64\lua.exe
copy /Y build64_54\Release\luac.exe bin_lua54\64\luac.exe

mkdir build32_54 & pushd build32_54
cmake -DLUA_VERSION=5.4.2 -G "Visual Studio 15 2017" ..
popd
cmake --build build32_54 --config Release
md bin_lua54\32
copy /Y build32_54\Release\lua.exe bin_lua54\32\lua.exe
copy /Y build32_54\Release\luac.exe bin_lua54\32\luac.exe

pause