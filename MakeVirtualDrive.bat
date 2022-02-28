
:: Making the generic text document that our dispart /s command will need later.
break>"dblank.txt"

::I'm just going to let in generic paths in here because no personal info is in it. But each echo is going to append text to a text file.

@echo create vdisk file="D:\VisualCodePortable\VisualCodePortable.vhd" type = expandable MAXIMUM=10000 SD="D:P(A;;GA;;;WD)">> dblank.txt
@echo select vdisk file "D:\VisualCodePortable\VisualCodePortable.vhd">> dblank.txt
@echo attach vdisk>> dblank.txt
@echo convert mbr>> dblank.txt
@echo create partition primary>> dblank.txt
@echo format fs=ntfs label="VisualCodePortable">> dblank.txt
@echo assign letter=q>> dblank.txt

:: Here is where we go into diskpart and load the text file we just made. Congrats on your new virtual hard drive. 
diskpart /s dblank.txt


pause
