local h = game.Players.LocalPlayer.Character.Humanoid
local current_ws = 16
for i,v in pairs(getconnections(h.Changed)) do v:Disable() end
local mt = getrawmetatable(game)
setreadonly(mt,false)
local backup = mt.__index
local backup2 = mt.__newindex
mt.__index = newcclosure(function(tbl,idx)
if checkcaller() then return backup(tbl,idx) end
if tbl == h and idx == "WalkSpeed" then
return current_ws
end
return backup(tbl,idx)
end)
mt.__newindex = newcclosure(function(tbl,idx,val)
if checkcaller() then return backup2(tbl,idx,val) end
if tbl == h and idx == "WalkSpeed" then
current_ws = val
return os.time()
end
return backup2(tbl,idx,val)
end)
setreadonly(mt,true)

wait(1)

h.WalkSpeed = 35