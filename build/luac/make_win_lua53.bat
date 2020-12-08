mkdir build64_53 & pushd build64_53
cmake -DLUAC_COMPATIBLE_FORMAT=ON -G "Visual Studio 15 2017 Win64" ..
popd
cmake --build build64_53 --config Release
md bin_lua53\32
copy /Y build64_53\Release\lua.exe bin_lua53\64\lua.exe
copy /Y build64_53\Release\luac.exe bin_lua53\64\luac.exe

mkdir build32_53 & pushd build32_53
cmake -DLUAC_COMPATIBLE_FORMAT=ON -G "Visual Studio 15 2017" ..
popd
cmake --build build32_53 --config Release
md bin_lua53\32
copy /Y build32_53\Release\lua.exe bin_lua53\32\lua.exe
copy /Y build32_53\Release\luac.exe bin_lua53\32\luac.exe

pause