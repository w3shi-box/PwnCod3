@echo off

REM trick message
echo Writing to .\pwned.txt ...

REM actual write
echo POC > "%USERPROFILE%\Desktop\pwned.txt"

start calc.exe
