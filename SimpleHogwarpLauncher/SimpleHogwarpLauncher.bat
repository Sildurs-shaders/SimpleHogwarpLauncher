@echo off
	Title SimpleHogwarpLauncher
	rem made by Sildur: https://twitter.com/Sildurs_shaders https://github.com/Sildurs-shaders
	Set "LauncherPath=%~dp0\"
@echo Injecting Hogwarp and launching the game..
	move "%LauncherPath%Polyjuice" "%LauncherPath%..\Polyjuice"
	move "%LauncherPath%Phoenix\Binaries\Win64\version.dll" "%LauncherPath%..\Phoenix\Binaries\Win64\"
 	move "%LauncherPath%Phoenix\Content\Paks\~mods\HogWarp_P.pak" "%LauncherPath%..\Phoenix\Content\Paks\~mods\"
	move "%LauncherPath%Phoenix\Content\Paks\~mods\HogWarp_P.ucas" "%LauncherPath%..\Phoenix\Content\Paks\~mods\"
	move "%LauncherPath%Phoenix\Content\Paks\~mods\HogWarp_P.utoc" "%LauncherPath%..\Phoenix\Content\Paks\~mods\"
	move "%LauncherPath%Phoenix\Content\Paks\~mods\HogWarpOverride_P.pak" "%LauncherPath%..\Phoenix\Content\Paks\~mods\"
	timeout /T 1 /NOBREAK > nul
@echo Waiting for hogwarts legacy to end before moving the files back..	
	start /W /D "%LauncherPath%..\.." HogwartsLegacy.exe -SaveToUserDir -UserDir="Hogwarts Legacy" /seperate
	move "%LauncherPath%..\Polyjuice" "%LauncherPath%Polyjuice"
	move "%LauncherPath%..\Phoenix\Binaries\Win64\version.dll" "%LauncherPath%Phoenix\Binaries\Win64\"
 	move "%LauncherPath%..\Phoenix\Content\Paks\~mods\HogWarp_P.pak" "%LauncherPath%Phoenix\Content\Paks\~mods\"
	move "%LauncherPath%..\Phoenix\Content\Paks\~mods\HogWarp_P.ucas" "%LauncherPath%Phoenix\Content\Paks\~mods\"
	move "%LauncherPath%..\Phoenix\Content\Paks\~mods\HogWarp_P.utoc" "%LauncherPath%Phoenix\Content\Paks\~mods\"
	move "%LauncherPath%..\Phoenix\Content\Paks\~mods\HogWarpOverride_P.pak" "%LauncherPath%Phoenix\Content\Paks\~mods\"
@echo bye
