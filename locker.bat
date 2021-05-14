@echo off
color 0a
title Folder Locker
IF EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B303­­09D}" GOTO UNLOCK
IF NOT EXIST VaultFolder GOTO MDLOCKER
echo "Vault Folder" Created to it's current location.

 
:CONFIRM
echo Are you sure you want to lock the folder? (Y/N)

set/p "cho="
IF %cho%==Y GOTO VaultFolder
IF %cho%==y GOTO VaultFolder
IF %cho%==N GOTO END
IF %cho%==n GOTO END
echo Invalid Choice.
GOTO CONFIRM
:VaultFolder
ren VaultFolder "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B303­­09D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B303­­09D}"
echo Folder Locked.
GOTO END

:UNLOCK
echo Enter password to unlock the Folder :
set/p "pass="
IF NOT %pass% == admin GOTO FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B303­­09D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B303­­09D}" VaultFolder
echo Folder Unlocked Successfully.
GOTO END
:FAIL
echo Invalid Password!
GOTO END

:MDLOCKER
md VaultFolder
echo "VaultFolder" created to it's current location
echo Instruction:
echo Put all file you want to hide inside "VaultFolder" and Press "Y"
Goto CONFIRM



GOTO END
:END
PAUSE
