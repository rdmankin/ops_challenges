!/bin/bash

# Script Name: Batch Scripting

# Author: Raymond Mankin

# Date of last revision: 10/30/2023

# Purpose: Batch Script Definitions

### Resources: https://en.wikibooks.org/wiki/Windows_Batch_Scripting
### https://www.makeuseof.com/tag/use-windows-batch-file-commands-automate-repetitive-tasks/

@echo off
This line turns off the display of all commands as they are executed. This is useful for making the batch file less cluttered and more efficient.

setlocal enabledelayedexpansion
This line enables delayed variable expansion, which means that the values of variables are expanded at the time they are used, rather than when the batch file is first parsed. This is useful for situations where the values of variables need to be dynamically updated.

set /p sourcePath=Enter the source folder path:
This line prompts the user to enter the path to the source folder. The user's input is stored in the variable sourcePath.

set /p destinationPath=Enter the destination folder path:
This line prompts the user to enter the path to the destination folder. The user's input is stored in the variable destinationPath.

if not exist "!sourcePath!\" (
    echo Error: Source folder does not exist.
    goto :eof
)
This line checks if the source folder exists. If it does not exist, the batch file displays an error message and exits.

if not exist "!destinationPath!\" (
    echo Error: Destination folder does not exist.
    goto :eof
)
This line checks if the destination folder exists. If it does not exist, the batch file displays an error message and exits.

robocopy "!sourcePath!" "!destinationPath!" /E
This line uses the robocopy command to copy the contents of the source folder to the destination folder. The /E switch ensures that all subdirectories and files are copied.

if errorlevel 8 (
    echo Error: ROBOCOPY encountered errors during the copy operation.
) else (
    echo Copy operation completed successfully.
)
This line checks the return code of the robocopy command. If the return code is 8, it means that robocopy encountered errors during the copy operation. In this case, the batch file displays an error message. Otherwise, the batch file displays a success message.

:end
endlocal
This line labels the end of the batch file. The endlocal command restores the environment to the state it was in before the setlocal command was executed.
