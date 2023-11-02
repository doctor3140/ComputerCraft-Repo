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

function tableFind(table, term)
    for k in pairs(table) do
	if(term==k) then return true end
    end
    return false
end
