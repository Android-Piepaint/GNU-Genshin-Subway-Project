execute as @e[distance=..2,type=minecart,limit=1,sort=nearest,tag=!bulletcart,tag=!bcartv2] at @s positioned ~ ~ ~ run function ftmc:bcartv2/control/v2_1/south
execute as @e[distance=..2,type=minecart,limit=1,sort=nearest,tag=ftbc_is_v21_enabled] at @s positioned ~ ~ ~ run function ftmc:bcartv2/control/v2_1/accel_legacy