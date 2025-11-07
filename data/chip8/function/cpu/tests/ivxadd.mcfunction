data modify storage chip8:emu program set value [96b,72b,-81b,-1b,-16b,30b]
function chip8:cpu/util/load_program
function chip8:cpu/util/run_all_loop

data modify storage chip8:emu testpass set value 1
execute store result score .temp math run data get storage chip8:emu cpu_i_reg
execute unless score .temp math matches 4167 run tellraw @a [{"text":"Failure: i is not 4167, but is ",color:red},{"score":{name:".temp",objective:"math"},color:red}]
execute unless score .temp math matches 4167 run data modify storage chip8:emu testpass set value 0

execute if data storage chip8:emu {testpass:1} run tellraw @a {"text":"Test ivxadd passed! ",color:green}