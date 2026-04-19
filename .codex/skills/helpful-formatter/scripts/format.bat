@echo off

echo [*] Running formatter...

cd /d %~dp0\..\data

python process.py

echo [*] Format complete
