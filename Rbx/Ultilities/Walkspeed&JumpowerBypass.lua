local gmt = getrawmetatable(game)
setreadonly(gmt, false)
local oldIndex = gmt.__index
gmt.__index = newcclosure(function(self, b)
    if b == "WalkSpeed" then
        return 16
    end
    if b == "JumpPower" then 
        return 50
    end
    return oldIndex(self, b)
end)

game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
