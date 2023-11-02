require "tableTools"

programs = {
    {"tp.lua",   "tableTools.lua", "coords.lua", "coordinateConvert.lua", "make.lua"},
    {"qKbD9wfz", "pyyez73d",       "k9sSbXk0",   "GVN2DKA3",              "hm5DD1nh"}
}
--1
if(tableLength(arg) == 1) then 
    for k in pairs(programs[1]) do
    shell.run("delete", programs[1][k])
    shell.run("pastebin", "get", programs[2][k], programs[1][k])
    print(programs[1][k].." made")
    end

else
--1
    for i=1, tableLength(arg)-1 do
    shell.run("delete", arg[i])
    shell.run("pastebin", "get", programs[2][tableGetIndex(programs[1], arg[i])], arg[i])
    --print("pastebin get "..arg[i].." "..programs[2][tableGetIndex(programs[1], arg[i])])
    print(arg[i].." made")
    end	
end
