require "coords"
require "tableTools"

success = nil
rednet.open("back")

if(arg[1]=="help") then
    print("Usage 'lua tp.lua player destination'")
    return -1
end

--print(coords["doctor3140"]["home"])
--print(coords[player][destination])

if(tableLength(arg)<3) then
    success = rednet.send(coords[default_player]["home"])
    if (success) then print("Teleported "..default_player.." home")
    else print("Telportation failed at home") end
    return 0
end

if(tableLength(coords)<4) then
  success = rednet.send(coords[default_player][arg[1]])
  if (success) then print("Teleported "..default_player.." "..arg[1])
  else print("Telportation failed at "..arg[1]) end
end

player = arg[1]
destination = arg[2]

rednet.send(coords[player][destination])
if (success) then print("Teleported "..player.." "..destination)
else print("Telportation failed at "..destination) end
