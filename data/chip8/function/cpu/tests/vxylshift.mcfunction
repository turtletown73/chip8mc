data modify storage chip8:emu program set value [96b,7b,97b,-86b,-128b,30b]
function chip8:cpu/util/load_program
function chip8:cpu/util/run_all_loop

data modify storage chip8:emu testpass set value 1
execute store result score .temp math run data get storage chip8:emu cpu_v_regs[0]
execute unless score .temp math matches 84 run tellraw @a [{"text":"Failure: v0 is not 84, but is ",color:red},{"score":{name:".temp",objective:"math"},color:red}]
execute unless score .temp math matches 84 run data modify storage chip8:emu testpass set value 0
execute store result score .temp math run data get storage chip8:emu cpu_v_regs[15]
execute unless score .temp math matches 1 run tellraw @a [{"text":"Failure: vf reg is not 1, but is ",color:red},{"score":{name:".temp",objective:"math"},color:red}]
execute unless score .temp math matches 1 run data modify storage chip8:emu testpass set value 0

execute if data storage chip8:emu {testpass:1} run tellraw @a {"text":"Test vxylshift passed! ",color:green}