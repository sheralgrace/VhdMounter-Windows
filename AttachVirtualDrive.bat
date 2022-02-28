break>"dblank.txt"

::here we are going to attach the virtual hard drive, like in the making process we are making the text file for dispart /s to run

@echo select vdisk file "D:\VisualCodePortable\VisualCodePortable.vhd">> dblank.txt
@echo attach vdisk>> dblank.txt
@echo assign letter=q>> dblank.txt


diskpart /s dblank.txt
