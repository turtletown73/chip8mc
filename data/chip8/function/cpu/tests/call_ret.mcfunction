data modify storage chip8:emu program set value [34b,4b,0b,0b,96b,10b,0b,-18b]
function chip8:cpu/util/load_program
function chip8:cpu/util/run_all_loop

data modify storage chip8:emu testpass set value 1
execute store result score .temp math run data get storage chip8:emu cpu_v_regs[0]
execute unless score .temp math matches 10 run tellraw @a [{"text":"Failure: v0 is not 10, but is ",color:red},{"score":{name:".temp",objective:"math"},color:red}]
execute unless score .temp math matches 10 run data modify storage chip8:emu testpass set value 0

execute if data storage chip8:emu {testpass:1} run tellraw @a {"text":"Test call+ret passed! ",color:green}