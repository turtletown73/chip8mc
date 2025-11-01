data modify storage chip8:emu program set value [-16b,10b]
function chip8:cpu/util/load_program
data modify storage chip8:emu keyboard[5] set value 1
function chip8:cpu/util/run_all_loop

data modify storage chip8:emu testpass set value 1
execute store result score .temp math run data get storage chip8:emu cpu_v_regs[0]
execute unless score .temp math matches 5 run tellraw @a [{"text":"Failure: v0 is not 5, but is ",color:red},{"score":{name:".temp",objective:"math"},color:red}]
execute unless score .temp math matches 5 run data modify storage chip8:emu testpass set value 0

execute if data storage chip8:emu {testpass:1} run tellraw @a {"text":"Test vxkeyset passed! ",color:green}