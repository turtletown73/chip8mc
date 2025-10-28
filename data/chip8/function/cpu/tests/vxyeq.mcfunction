data modify storage chip8:emu program set value [96b,10b,97b,10b,80b,16b]
function chip8:cpu/load_program
function chip8:cpu/run_all_loop

data modify storage chip8:emu testpass set value 1
execute store result score .temp math run data get storage chip8:emu cpu_pc
execute unless score .temp math matches 520 run tellraw @a [{"text":"Failure: pc is not 520, but is ",color:red},{"score":{name:".temp",objective:"math"},color:red}]
execute unless score .temp math matches 520 run data modify storage chip8:emu testpass set value 0

execute if data storage chip8:emu {testpass:1} run tellraw @a {"text":"Test vxyeq passed! ",color:green}