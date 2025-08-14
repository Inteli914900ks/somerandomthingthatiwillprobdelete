@echo off
cd data\koto\function\
echo function koto:revert>> tick.mcfunction
echo execute as @a if items entity @s container.* minecraft:player_head[minecraft:custom_name=Revert] run function koto:reverted >> revert.mcfunction
echo clear @s minecraft:player_head[minecraft:custom_name=Revert] 1 >> reverted.mcfunction
echo give @s skeleton_skull 1 >> reverted.mcfunction
cd ..\..\..
del revert.bat
