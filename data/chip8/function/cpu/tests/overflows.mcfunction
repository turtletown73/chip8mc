data modify storage chip8:emu program set value [96b,-1b,97b,10b,-128b,20b,97b,5b,98b,10b,-127b,37b,98b,5b,99b,10b,-125b,39b]
function chip8:cpu/util/load_program
function chip8:cpu/util/run_all_loop

data modify storage chip8:emu testpass set value 1
execute store result score .temp math run data get storage chip8:emu cpu_v_regs[0]
execute unless score .temp math matches 9 run tellraw @a [{"text":"Failure: v0 is not 19, but is ",color:red},{"score":{name:".temp",objective:"math"},color:red}]
execute unless score .temp math matches 9 run data modify storage chip8:emu testpass set value 0
execute store result score .temp math run data get storage chip8:emu cpu_v_regs[1]
execute unless score .temp math matches -5 run tellraw @a [{"text":"Failure: v1 is not 251, but is ",color:red},{"score":{name:".temp",objective:"math"},color:red}]
execute unless score .temp math matches -5 run data modify storage chip8:emu testpass set value 0
execute store result score .temp math run data get storage chip8:emu cpu_v_regs[3]
execute unless score .temp math matches -5 run tellraw @a [{"text":"Failure: v3 is not 251, but is ",color:red},{"score":{name:".temp",objective:"math"},color:red}]
execute unless score .temp math matches -5 run data modify storage chip8:emu testpass set value 0 

execute if data storage chip8:emu {testpass:1} run tellraw @a {"text":"Test overflows passed! ",color:green}