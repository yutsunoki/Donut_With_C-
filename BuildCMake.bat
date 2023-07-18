@echo off
rmdir /q /s .\cbuild
rmdir /q /s .\Output
cmake -G "MinGW Makefiles" -B cbuild
make -C ./cbuild
.\Output\bin\Donut.exe
