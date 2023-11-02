--Created by doctor3140
--for use in Minecraft Ender pearl Stasis chambers
--CC: Tweaked v1.108.3


--define for place to output redstone signal
outputSide = "bottom"
modemSide = "right"
ID = 2


--void function that listens to modem
--takes in string side, int channel, int ID 
function listen(side, ID)
    rednet.open(side)
    msg = nil
    while (msg ~= ID) do
	msg = rednet.receive()
    end
    print(ID, "sent")
end

--main
redstone.setOutput(outputSide, true)
while(true) do
    listen(modemSide, ID)
    redstone.setOutput(outputSide, false)
    sleep(0.3)
    redstone.setOutput(outputSide, true)
end
