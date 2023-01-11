data merge entity @s[tag=!ftbc_is_v22_enabled] {Motion:[1d,0d,0d]}
data merge entity @s[tag=!ftbc_is_v22_enabled,scores={bulletcartns=1..}] {Motion:[1d,0d,1d]}
data merge entity @s[tag=!ftbc_is_v22_enabled,scores={bulletcartns=..-1}] {Motion:[1d,0d,-1d]}

function ftmc:bcartv2/engine/fixtp/load_motion
execute as @s[tag=ftbc_speed_bit_0] at @s run teleport @s ~0.0139 ~ ~
execute as @s[tag=ftbc_speed_bit_1] at @s run teleport @s ~0.0278 ~ ~
execute as @s[tag=ftbc_speed_bit_2] at @s run teleport @s ~0.0556 ~ ~
execute as @s[tag=ftbc_speed_bit_3] at @s run teleport @s ~0.1111 ~ ~
execute as @s[tag=ftbc_speed_bit_4] at @s run teleport @s ~0.2222 ~ ~
execute as @s[tag=ftbc_speed_bit_5] at @s run teleport @s ~0.4444 ~ ~
execute as @s[tag=ftbc_speed_bit_6] at @s run teleport @s ~0.8889 ~ ~
execute as @s[tag=ftbc_speed_bit_7] at @s run teleport @s ~1.7778 ~ ~
execute as @s[tag=ftbc_speed_bit_8] at @s run teleport @s ~3.5556 ~ ~
execute as @s[tag=ftbc_speed_bit_9] at @s run teleport @s ~7.1111 ~ ~
function ftmc:bcartv2/engine/fixtp/save_motion
