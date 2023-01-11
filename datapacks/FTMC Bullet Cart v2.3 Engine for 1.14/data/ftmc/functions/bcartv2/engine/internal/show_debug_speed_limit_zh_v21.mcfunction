# This is an inner function, called by function ftmc:bcartv2/engine/internal/adjust only.
# Do not try to call this function elsewhere.

# Show the messages in the following format:
# 目前速度: [yellow][ssss km/h], 位於 [yellow][(xxxx, zzzz)]; 再行駛 [aqua][dddd 米]後, 速度將達 [green/gold][tttt km/h]。
# ssss: ftbc_debug_cs
# xxxx: ftbc_debug_x0
# zzzz: ftbc_debug_z0
# dddd: ftbc_debug_d
# tttt: ftbc_debug_ts

# For Case #1A: Accelerating from the beginning
execute as @s[scores={ftbc_sl_delta=1..,ftbc_debug_cs=..29}] at @s positioned ~ ~ ~ run tellraw @p[distance=..1] [{"text":"目前速度: ","bold":false,"color":"reset"},{"text":"29 km/h 以下","bold":true,"color":"yellow"},{"text":", 位於 ","bold":false,"color":"reset"},{"text":"(","bold":true,"color":"yellow"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_x0"},"bold":true,"color":"yellow"},{"text":", ","bold":true,"color":"yellow"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_z0"},"bold":true,"color":"yellow"},{"text":")","bold":true,"color":"yellow"},{"text":"; 再行駛 ","bold":false,"color":"reset"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_d"},"bold":true,"color":"aqua"},{"text":" 米","bold":true,"color":"aqua"},{"text":"後, 速度將達 ","bold":false,"color":"reset"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_ts"},"bold":true,"color":"green"},{"text":" km/h","bold":true,"color":"green"},{"text":"。","bold":false,"color":"reset"}]

# For Case #1B: Accelerating from halfways
execute as @s[scores={ftbc_sl_delta=1..,ftbc_debug_cs=30..}] at @s positioned ~ ~ ~ run tellraw @p[distance=..1] [{"text":"目前速度: ","bold":false,"color":"reset"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_cs"},"bold":true,"color":"yellow"},{"text":" km/h","bold":true,"color":"yellow"},{"text":", 位於 ","bold":false,"color":"reset"},{"text":"(","bold":true,"color":"yellow"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_x0"},"bold":true,"color":"yellow"},{"text":", ","bold":true,"color":"yellow"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_z0"},"bold":true,"color":"yellow"},{"text":")","bold":true,"color":"yellow"},{"text":"; 再行駛 ","bold":false,"color":"reset"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_d"},"bold":true,"color":"aqua"},{"text":" 米","bold":true,"color":"aqua"},{"text":"後, 速度將達 ","bold":false,"color":"reset"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_ts"},"bold":true,"color":"green"},{"text":" km/h","bold":true,"color":"green"},{"text":"。","bold":false,"color":"reset"}]

# For Case #2A: Normal Braking when the cart is in high-speed mode
execute as @s[tag=!ftbc_emerbrake,scores={ftbc_sl_delta=..-1,ftbc_debug_cs=30..}] at @s positioned ~ ~ ~ run tellraw @p[distance=..1] [{"text":"目前速度: ","bold":false,"color":"reset"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_cs"},"bold":true,"color":"yellow"},{"text":" km/h","bold":true,"color":"yellow"},{"text":", 位於 ","bold":false,"color":"reset"},{"text":"(","bold":true,"color":"yellow"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_x0"},"bold":true,"color":"yellow"},{"text":", ","bold":true,"color":"yellow"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_z0"},"bold":true,"color":"yellow"},{"text":")","bold":true,"color":"yellow"},{"text":"; 再行駛 ","bold":false,"color":"reset"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_d"},"bold":true,"color":"aqua"},{"text":" 米","bold":true,"color":"aqua"},{"text":"後, 速度將達 ","bold":false,"color":"reset"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_ts"},"bold":true,"color":"gold"},{"text":" km/h","bold":true,"color":"gold"},{"text":"。","bold":false,"color":"reset"}]

# For Case #2B: Normal Braking when the cart is NOT in high-speed mode (not necessary)
execute as @s[tag=!ftbc_emerbrake,scores={ftbc_sl_delta=..-1,ftbc_debug_cs=..29}] at @s positioned ~ ~ ~ run tellraw @p[distance=..1] [{"text":"目前速度: ","bold":false,"color":"reset"},{"text":"29 km/h 以下","bold":true,"color":"yellow"},{"text":", 位於 ","bold":false,"color":"reset"},{"text":"(","bold":true,"color":"yellow"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_x0"},"bold":true,"color":"yellow"},{"text":", ","bold":true,"color":"yellow"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_z0"},"bold":true,"color":"yellow"},{"text":")","bold":true,"color":"yellow"},{"text":"; 再行駛 ","bold":false,"color":"reset"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_d"},"bold":true,"color":"aqua"},{"text":" 米","bold":true,"color":"aqua"},{"text":"後, 速度將達 ","bold":false,"color":"reset"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_ts"},"bold":true,"color":"gold"},{"text":" km/h","bold":true,"color":"gold"},{"text":"。","bold":false,"color":"reset"}]

# For Case #3A: SkipAccel functions (cart speed >= 30 km/h)
execute as @s[scores={ftbc_funcid=30,ftbc_debug_cs=30..}] at @s positioned ~ ~ ~ unless score @s ftbc_funcid = @s ftbc_funcid_old run tellraw @p[distance=..1] [{"text":"速度已","bold":false,"color":"reset"},{"text":"立即","bold":true,"color":"yellow"},{"text":"變為 ","bold":false,"color":"reset"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_cs"},"bold":true,"color":"aqua"},{"text":" km/h","bold":true,"color":"aqua"},{"text":", 位於 ","bold":false,"color":"reset"},{"text":"(","bold":true,"color":"yellow"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_x0"},"bold":true,"color":"yellow"},{"text":", ","bold":true,"color":"yellow"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_z0"},"bold":true,"color":"yellow"},{"text":")","bold":true,"color":"yellow"},{"text":"。","bold":false,"color":"reset"}]

# For Case #3B: SkipAccel functions (speed limit < 30 km/h)
execute as @s[scores={ftbc_funcid=30,ftbc_debug_cs=..29}] at @s positioned ~ ~ ~ unless score @s ftbc_funcid = @s ftbc_funcid_old run tellraw @p[distance=..1] [{"text":"速度已","bold":false,"color":"reset"},{"text":"立即","bold":true,"color":"yellow"},{"text":"變為 ","bold":false,"color":"reset"},{"text":"29 km/h 以下","bold":true,"color":"aqua"},{"text":", 位於 ","bold":false,"color":"reset"},{"text":"(","bold":true,"color":"yellow"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_x0"},"bold":true,"color":"yellow"},{"text":", ","bold":true,"color":"yellow"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_z0"},"bold":true,"color":"yellow"},{"text":")","bold":true,"color":"yellow"},{"text":"。","bold":false,"color":"reset"}]

# For Case #4A: Emergency Braking when the cart is >= 30 km/h
execute as @s[tag=ftbc_emerbrake,scores={ftbc_funcid=29,ftbc_debug_cs=30..}] at @s positioned ~ ~ ~ unless score @s ftbc_funcid = @s ftbc_funcid_old run tellraw @p[distance=..1] [{"text":"目前速度: ","bold":false,"color":"red"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_cs"},"bold":true,"color":"red"},{"text":" km/h","bold":true,"color":"red"},{"text":", 位於 ","bold":false,"color":"red"},{"text":"(","bold":true,"color":"yellow"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_x0"},"bold":true,"color":"yellow"},{"text":", ","bold":true,"color":"yellow"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_z0"},"bold":true,"color":"yellow"},{"text":")","bold":true,"color":"yellow"},{"text":"; ","bold":false,"color":"red"},{"text":"緊急煞車中!!!","bold":true,"color":"red"}]
execute as @s[tag=ftbc_emerbrake,scores={ftbc_funcid=29,ftbc_debug_cs=30..}] at @s positioned ~ ~ ~ unless score @s ftbc_funcid = @s ftbc_funcid_old run tellraw @p[distance=..1] [{"text":"請將此處的「紅色混凝土塊」改設於前方 ","bold":false,"color":"red"},{"score":{"name":"@e[type=minecart,sort=nearest,distance=..1,limit=1]","objective":"ftbc_debug_d"},"bold":true,"color":"gold"},{"text":" 米","bold":true,"color":"gold"},{"text":"處, 以確保行車平穩!","bold":false,"color":"red"}]

# For Case #4B: Emergency Braking when the cart is < 30 km/h (i.e. directly turning off high-speed mode)
execute as @s[tag=ftbc_emerbrake,scores={ftbc_debug_cs=..29}] at @s positioned ~ ~ ~ unless score @s ftbc_funcid = @s ftbc_funcid_old run tellraw @p[distance=..1] [{"text":"已順利關閉高速模式。","bold":true,"color":"red"}]
