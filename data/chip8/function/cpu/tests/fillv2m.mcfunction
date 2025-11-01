data modify storage chip8:emu program set value [-15b, 85b]
function chip8:cpu/util/load_program
data modify storage chip8:emu cpu_v_regs set value [69b, 42b]
data modify storage chip8:emu cpu_i_reg set value 514s
function chip8:cpu/util/run_all_loop

data modify storage chip8:emu testpass set value 1
execute store result score .temp math run data get storage chip8:emu ram[514]
execute unless score .temp math matches 69 run tellraw @a [{"text":"Failure: ram[514] is not 69, but is ",color:red},{"score":{name:".temp",objective:"math"},color:red}]
execute unless score .temp math matches 69 run data modify storage chip8:emu testpass set value 0

execute store result score .temp math run data get storage chip8:emu ram[515]
execute unless score .temp math matches 42 run tellraw @a [{"text":"Failure: ram[515] is not 42, but is ",color:red},{"score":{name:".temp",objective:"math"},color:red}]
execute unless score .temp math matches 42 run data modify storage chip8:emu testpass set value 0

execute if data storage chip8:emu {testpass:1} run tellraw @a {"text":"Test fillv2m passed! ",color:green}