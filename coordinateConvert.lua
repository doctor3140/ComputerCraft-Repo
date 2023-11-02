--Created by doctor3140
--Converts nether and overworld coordinates
--CC: Tweaked v1.108.3

require "tableTools"

function nether2over()
    x=0
    z=0
    if(tableLength(arg)<5) then
	print("X: ")
	x = read()
	print("Z: ")
	y = read()
    else
	x = arg[2]
	z = arg[3]
    end
    x = x*8
    z = z*8
    print("Overworld Coordinates are:")
    print(x, z)
end

function over2nether()
    x=0
    z=0
    if(tableLength(arg)<5) then
	print("X: ")
	x = read()
	print("Z: ")
	y = read()
    else
	x = arg[2]
	z = arg[3]
    end
    x = x/8.0
    z = z/8.0
    print("Nether Coordinates are:")
    print(x, z)
end

if(tableLength(arg)<3 or arg[1]=="help") then
    print("Usage 'lua coordinateConvert dimension x z' EX: lua coordinateConvert nether 80 8")
    return -1
end

--change this to use an upper to lower conversion sometime later
if (arg[1]=="nether" or arg[1]=="Nether") then
    nether2over()
elseif (arg[1]=="over" or arg[1]=="Over" or arg[1]=="overworld" or arg[1]=="Overworld") then
    over2nether()
else
    print("Improper argument", arg[1], "accepted args are nether or over")
end
