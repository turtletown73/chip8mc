data modify storage chip8:emu program set value [96b,-16b,97b,-86b,-128b,18b]
function chip8:cpu/load_program
function chip8:cpu/run_all_loop

data modify storage chip8:emu testpass set value 1
execute store result score .temp math run data get storage chip8:emu cpu_v_regs[0]
execute unless score .temp math matches -96 run tellraw @a [{"text":"Failure: v0 is not -96, but is ",color:red},{"score":{name:".temp",objective:"math"},color:red}]
execute unless score .temp math matches -96 run data modify storage chip8:emu testpass set value 0

execute if data storage chip8:emu {testpass:1} run tellraw @a {"text":"Test and passed! ",color:green}