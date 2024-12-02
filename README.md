# Cleanup-Duplicate-OneDrive-Desktop-Shortcuts

This script will delete any of the copies of shortcuts that are generated on the Desktop.  If you push shortcuts to their desktop, OneDrive creates duplicates.  This script will remove any .URL or .LNK that contains " - Copy" or that is appended with a computer name.  This is assuming you don't use any of your computer name abbreviations in your shortcut names, and don't name the shortcut with " - Copy".


Run this script under user context.  Adjust the variables OneDriveName, and ComputerAbbreviations to suite your environment.
