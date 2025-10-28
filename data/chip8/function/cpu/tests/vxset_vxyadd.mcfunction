data modify storage chip8:emu program set value [96b,9b,97b,10b,-128b,20b]
function chip8:cpu/load_program
function chip8:cpu/run_all_loop

data modify storage chip8:emu testpass set value 1
execute store result score .temp math run data get storage chip8:emu cpu_v_regs[0]
execute unless score .temp math matches 19 run tellraw @a [{"text":"Failure: v0 is not 19, but is ",color:red},{"score":{name:".temp",objective:"math"},color:red}]
execute unless score .temp math matches 19 run data modify storage chip8:emu testpass set value 0
execute store result score .temp math run data get storage chip8:emu cpu_v_regs[1]
execute unless score .temp math matches 10 run tellraw @a [{"text":"Failure: second reg is not 10, but is ",color:red},{"score":{name:".temp",objective:"math"},color:red}]
execute unless score .temp math matches 10 run data modify storage chip8:emu testpass set value 0

execute if data storage chip8:emu {testpass:1} run tellraw @a {"text":"Test vxset+vxyadd passed! ",color:green}