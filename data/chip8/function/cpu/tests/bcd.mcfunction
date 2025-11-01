data modify storage chip8:emu program set value [96b,69b,-16b,51b]
function chip8:cpu/util/load_program
function chip8:cpu/util/run_all_loop

data modify storage chip8:emu testpass set value 1
execute store result score .temp math run data get storage chip8:emu ram[0]
execute unless score .temp math matches 0 run tellraw @a [{"text":"Failure: hundreds digit is not 0, but is ",color:red},{"score":{name:".temp",objective:"math"},color:red}]
execute unless score .temp math matches 0 run data modify storage chip8:emu testpass set value 0
execute store result score .temp math run data get storage chip8:emu ram[1]
execute unless score .temp math matches 6 run tellraw @a [{"text":"Failure: tens digit is not 6, but is ",color:red},{"score":{name:".temp",objective:"math"},color:red}]
execute unless score .temp math matches 6 run data modify storage chip8:emu testpass set value 0
execute store result score .temp math run data get storage chip8:emu ram[2]
execute unless score .temp math matches 9 run tellraw @a [{"text":"Failure: ones digit is not 9, but is ",color:red},{"score":{name:".temp",objective:"math"},color:red}]
execute unless score .temp math matches 9 run data modify storage chip8:emu testpass set value 0

execute if data storage chip8:emu {testpass:1} run tellraw @a {"text":"Test bcd passed! ",color:green}