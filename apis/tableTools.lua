--Created by doctor3140
--Library for lua
--CC: Tweaked v1.108.3

function tableLength(table)
    length = 0
    for k in pairs(table) do
	length=length+1
    end
    return length
end


--this is bad... rewrite with while loop??
--[[
function tableArgLength()
    length = 0
    for k in pairs(arg) do
	if(k<1) then length = 0
	else length=length+1 end
    end
    return length
end
--]]

function tableFind(table, term)
    for k in pairs(table) do
	if(term==k) then return true end
    end
    return false
end

function tableGetIndex(table, term)
    for k in pairs(table) do
	if(term==table[k]) then return k end
    end
    return nil
end

