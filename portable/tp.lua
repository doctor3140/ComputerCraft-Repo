require "coords"
require "tableTools"

success = false
rednet.open("back")

if(arg[1]=="help") then
    print("Usage 'lua tp.lua player destination'")
    return -1
end

if(tableLength(arg)<2) then
    rednet.send(coords[default_player]["home"])
    success = rednet.receive(3)
    if (success) then print("Teleported "..default_player.." home") return 0
    else print("Teleportation failed at home") return -1 end
end

player = arg[1]

if(tableLength(coords)<3) then
  rednet.send(coords[default_player][player])
  success = rednet.receive(3)
  if (success) then print("Teleported "..default_player.." "..player) return 0
  else print("Teleportation failed at "..player) return -1 end
end
--not yet working

destination = arg[2]

rednet.send(coords[player][destination])
success = rednet.receive(3)
if (success) then print("Teleported "..player.." "..destination) return 0
else print("Teleportation failed at "..destination) return -1 end
return -1
