#!/bin/bash

# Script Name: Ops Challenge Powershell Log Retrieval

# Author: Raymond Mankin

# Date of last revision: 10/30/2023

# Purpose: Interpreting Powershell Log Retrieval Syntax

# Resources: https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/?view=powershell-5.1 and ChatGPT


1. Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.
Get-WinEvent -LogName System -MaxEvents 0 -FilterHashtable @{LogName='System'; StartTime=(Get-Date).AddHours(-24)} | Out-File "$env:USERPROFILE\Desktop\last_24.txt"

2. Output all “error” type events from the System event log to a file on your desktop named errors.txt.
Get-WinEvent -LogName System -MaxEvents 0 -FilterHashTable @{LogName='System'; Level=2} | Out-File "$env:USERPROFILE\Desktop\errors.txt"

3. Print to the screen all events with ID of 16 from the System event log.
Get-WinEvent -LogName System -MaxEvents 0 | Where-Object { $_.Id -eq 16 } | Format-Table -AutoSize

4. Print to the screen the most recent 20 entries from the System event log.
Get-WinEvent -LogName System -MaxEvents 20 | Format-Table -AutoSize

5. Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed.
Get-WinEvent -LogName System -MaxEvents 500 | Select-Object -Property TimeCreated, ProviderName, Id, Message | Format-List
