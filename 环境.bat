@echo off
set VS2019_PATH=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community

echo Visual Studio 2019的安装路径是: %VS2019_PATH%

set MSVC_BIN=%VS2019_PATH%\VC\Tools\MSVC\14.29.30133\bin
set MSVC_BIN_HOST=%VS2019_PATH%\VC\Tools\MSVC\14.29.30133\bin\Hostx64\x64

echo 添加以下路径到系统Path环境变量:
echo %MSVC_BIN%
echo %MSVC_BIN_HOST%

setx Path "%Path%;%MSVC_BIN%;%MSVC_BIN_HOST%"

set MSVC_INCLUDE=%VS2019_PATH%\VC\Tools\MSVC\14.29.30133\include
set WIN_KITS_INCLUDE_SHARED=C:\Program Files (x86)\Windows Kits\10\Include\10.0.19041.0\shared
set WIN_KITS_INCLUDE_UCRT=C:\Program Files (x86)\Windows Kits\10\Include\10.0.19041.0\ucrt
set WIN_KITS_INCLUDE_UM=C:\Program Files (x86)\Windows Kits\10\Include\10.0.19041.0\um
set WIN_KITS_INCLUDE_WINRT=C:\Program Files (x86)\Windows Kits\10\Include\10.0.19041.0\winrt

echo 添加以下路径到系统INCLUDE环境变量:
echo %MSVC_INCLUDE%
echo %WIN_KITS_INCLUDE_SHARED%
echo %WIN_KITS_INCLUDE_UCRT%
echo %WIN_KITS_INCLUDE_UM%
echo %WIN_KITS_INCLUDE_WINRT%

setx INCLUDE "%MSVC_INCLUDE%;%WIN_KITS_INCLUDE_SHARED%;%WIN_KITS_INCLUDE_UCRT%;%WIN_KITS_INCLUDE_UM%;%WIN_KITS_INCLUDE_WINRT%"

set MSVC_LIB=%VS2019_PATH%\VC\Tools\MSVC\14.29.30133\lib\x64
set MSVC_ATLMFC_LIB=%VS2019_PATH%\VC\Tools\MSVC\14.29.30133\atlmfc\lib\x64
set MSVC_AUXILIARY_VS_LIB=%VS2019_PATH%\VC\Auxiliary\VS\lib\x64
set WIN_KITS_LIB_UCRT=C:\Program Files (x86)\Windows Kits\10\lib\10.0.19041.0\ucrt\x64
set WIN_KITS_LIB_UM=C:\Program Files (x86)\Windows Kits\10\lib\10.0.19041.0\um\x64
set WIN_KITS_NETFXSDK_LIB=C:\Program Files (x86)\Windows Kits\NETFXSDK\4.8\lib\um\x64

echo 添加以下路径到系统LIB环境变量:
echo %MSVC_LIB%
echo %MSVC_ATLMFC_LIB%
echo %MSVC_AUXILIARY_VS_LIB%
echo %WIN_KITS_LIB_UCRT%
echo %WIN_KITS_LIB_UM%
echo %WIN_KITS_NETFXSDK_LIB%

setx LIB "%MSVC_LIB%;%MSVC_ATLMFC_LIB%;%MSVC_AUXILIARY_VS_LIB%;%WIN_KITS_LIB_UCRT%;%WIN_KITS_LIB_UM%;%WIN_KITS_NETFXSDK_LIB%"

echo 完成！MSVC环境变量、INCLUDE和LIB系统变量已配置。
