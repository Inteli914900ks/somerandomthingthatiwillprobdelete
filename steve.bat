@echo off
cd data\koto\function\
echo function koto:steve>> tick.mcfunction
echo execute as @a if items entity @s container.* minecraft:skeleton_skull[minecraft:custom_name=Steve] run function koto:givesteve >> steve.mcfunction
echo clear @s minecraft:skeleton_skull[minecraft:custom_name=Steve] 1>> givesteve.mcfunction
echo give @s minecraft:player_head[custom_name=Steve] 1>> givesteve.mcfunction
cd ..\..\..
del steve.bat
