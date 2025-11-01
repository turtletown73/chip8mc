execute store result score .bitwise0 math run data get storage global:bitwise arg1
execute store result score .bitwise1 math run data get storage global:bitwise arg2
scoreboard players set .bitwise6 math 0

scoreboard players set .bitwise2 math 2
scoreboard players operation .bitwise3 math = .bitwise0 math
scoreboard players operation .bitwise4 math = .bitwise1 math
scoreboard players operation .bitwise3 math %= .bitwise2 math
scoreboard players operation .bitwise4 math %= .bitwise2 math
scoreboard players operation .bitwise5 math = .bitwise2 math
scoreboard players operation .bitwise5 math /= .two math
execute if score .bitwise3 math matches 1.. if score .bitwise4 math matches 0 run scoreboard players operation .bitwise6 math += .bitwise5 math
execute if score .bitwise3 math matches 0 if score .bitwise4 math matches 1.. run scoreboard players operation .bitwise6 math += .bitwise5 math
scoreboard players operation .bitwise0 math -= .bitwise3 math
scoreboard players operation .bitwise1 math -= .bitwise4 math

scoreboard players set .bitwise2 math 4
scoreboard players operation .bitwise3 math = .bitwise0 math
scoreboard players operation .bitwise4 math = .bitwise1 math
scoreboard players operation .bitwise3 math %= .bitwise2 math
scoreboard players operation .bitwise4 math %= .bitwise2 math
scoreboard players operation .bitwise5 math = .bitwise2 math
scoreboard players operation .bitwise5 math /= .two math
execute if score .bitwise3 math matches 1.. if score .bitwise4 math matches 0 run scoreboard players operation .bitwise6 math += .bitwise5 math
execute if score .bitwise3 math matches 0 if score .bitwise4 math matches 1.. run scoreboard players operation .bitwise6 math += .bitwise5 math
scoreboard players operation .bitwise0 math -= .bitwise3 math
scoreboard players operation .bitwise1 math -= .bitwise4 math

scoreboard players set .bitwise2 math 8
scoreboard players operation .bitwise3 math = .bitwise0 math
scoreboard players operation .bitwise4 math = .bitwise1 math
scoreboard players operation .bitwise3 math %= .bitwise2 math
scoreboard players operation .bitwise4 math %= .bitwise2 math
scoreboard players operation .bitwise5 math = .bitwise2 math
scoreboard players operation .bitwise5 math /= .two math
execute if score .bitwise3 math matches 1.. if score .bitwise4 math matches 0 run scoreboard players operation .bitwise6 math += .bitwise5 math
execute if score .bitwise3 math matches 0 if score .bitwise4 math matches 1.. run scoreboard players operation .bitwise6 math += .bitwise5 math
scoreboard players operation .bitwise0 math -= .bitwise3 math
scoreboard players operation .bitwise1 math -= .bitwise4 math

scoreboard players set .bitwise2 math 16
scoreboard players operation .bitwise3 math = .bitwise0 math
scoreboard players operation .bitwise4 math = .bitwise1 math
scoreboard players operation .bitwise3 math %= .bitwise2 math
scoreboard players operation .bitwise4 math %= .bitwise2 math
scoreboard players operation .bitwise5 math = .bitwise2 math
scoreboard players operation .bitwise5 math /= .two math
execute if score .bitwise3 math matches 1.. if score .bitwise4 math matches 0 run scoreboard players operation .bitwise6 math += .bitwise5 math
execute if score .bitwise3 math matches 0 if score .bitwise4 math matches 1.. run scoreboard players operation .bitwise6 math += .bitwise5 math
scoreboard players operation .bitwise0 math -= .bitwise3 math
scoreboard players operation .bitwise1 math -= .bitwise4 math

scoreboard players set .bitwise2 math 32
scoreboard players operation .bitwise3 math = .bitwise0 math
scoreboard players operation .bitwise4 math = .bitwise1 math
scoreboard players operation .bitwise3 math %= .bitwise2 math
scoreboard players operation .bitwise4 math %= .bitwise2 math
scoreboard players operation .bitwise5 math = .bitwise2 math
scoreboard players operation .bitwise5 math /= .two math
execute if score .bitwise3 math matches 1.. if score .bitwise4 math matches 0 run scoreboard players operation .bitwise6 math += .bitwise5 math
execute if score .bitwise3 math matches 0 if score .bitwise4 math matches 1.. run scoreboard players operation .bitwise6 math += .bitwise5 math
scoreboard players operation .bitwise0 math -= .bitwise3 math
scoreboard players operation .bitwise1 math -= .bitwise4 math

scoreboard players set .bitwise2 math 64
scoreboard players operation .bitwise3 math = .bitwise0 math
scoreboard players operation .bitwise4 math = .bitwise1 math
scoreboard players operation .bitwise3 math %= .bitwise2 math
scoreboard players operation .bitwise4 math %= .bitwise2 math
scoreboard players operation .bitwise5 math = .bitwise2 math
scoreboard players operation .bitwise5 math /= .two math
execute if score .bitwise3 math matches 1.. if score .bitwise4 math matches 0 run scoreboard players operation .bitwise6 math += .bitwise5 math
execute if score .bitwise3 math matches 0 if score .bitwise4 math matches 1.. run scoreboard players operation .bitwise6 math += .bitwise5 math
scoreboard players operation .bitwise0 math -= .bitwise3 math
scoreboard players operation .bitwise1 math -= .bitwise4 math

scoreboard players set .bitwise2 math 128
scoreboard players operation .bitwise3 math = .bitwise0 math
scoreboard players operation .bitwise4 math = .bitwise1 math
scoreboard players operation .bitwise3 math %= .bitwise2 math
scoreboard players operation .bitwise4 math %= .bitwise2 math
scoreboard players operation .bitwise5 math = .bitwise2 math
scoreboard players operation .bitwise5 math /= .two math
execute if score .bitwise3 math matches 1.. if score .bitwise4 math matches 0 run scoreboard players operation .bitwise6 math += .bitwise5 math
execute if score .bitwise3 math matches 0 if score .bitwise4 math matches 1.. run scoreboard players operation .bitwise6 math += .bitwise5 math
scoreboard players operation .bitwise0 math -= .bitwise3 math
scoreboard players operation .bitwise1 math -= .bitwise4 math

scoreboard players set .bitwise2 math 256
scoreboard players operation .bitwise3 math = .bitwise0 math
scoreboard players operation .bitwise4 math = .bitwise1 math
scoreboard players operation .bitwise3 math %= .bitwise2 math
scoreboard players operation .bitwise4 math %= .bitwise2 math
scoreboard players operation .bitwise5 math = .bitwise2 math
scoreboard players operation .bitwise5 math /= .two math
execute if score .bitwise3 math matches 1.. if score .bitwise4 math matches 0 run scoreboard players operation .bitwise6 math += .bitwise5 math
execute if score .bitwise3 math matches 0 if score .bitwise4 math matches 1.. run scoreboard players operation .bitwise6 math += .bitwise5 math
scoreboard players operation .bitwise0 math -= .bitwise3 math
scoreboard players operation .bitwise1 math -= .bitwise4 math

return run scoreboard players get .bitwise6 math