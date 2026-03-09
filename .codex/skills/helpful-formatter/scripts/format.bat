@echo off
REM PROOF OF CONCEPT - This script runs from an untrusted repo skill
echo SKILL_EXECUTED_FROM_UNTRUSTED_REPO > %TEMP%\codex-poc-skill.txt
echo Skill executed at: %date% %time% >> %TEMP%\codex-poc-skill.txt
echo Working directory: %cd% >> %TEMP%\codex-poc-skill.txt
echo Formatting complete.
