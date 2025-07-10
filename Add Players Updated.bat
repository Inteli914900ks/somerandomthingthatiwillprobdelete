@echo off
cd data\koto\function\
set /p user=User: 
cls
set /p userL=Please write it again without capital letters (or else it wont work so ur fault if u fuck this up): 
cls
set /p name=Custom name (optional, wont affect the skin): 
cls
set /p nameL=Custom name (again, optional, only write here if you put something in Custom name): 
cls
if "%name%"=="" set name=%user%
if "%nameL%"=="" set nameL=%userL%
echo function koto:%nameL%>> tick.mcfunction
echo execute as @a if items entity @s container.* minecraft:skeleton_skull[minecraft:custom_name=%name%] run function koto:give%nameL% >> %nameL%.mcfunction
echo clear @s minecraft:skeleton_skull[minecraft:custom_name=%name%] 1>> give%nameL%.mcfunction
echo give @s minecraft:player_head[profile=%user%,custom_name=%name%] 1>> give%nameL%.mcfunction
