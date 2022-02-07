PLAYER  = game.Players.LocalPlayer
MOUSE   = PLAYER:GetMouse()

local function onKeyDown( key )
    print("Key:", key, " Code:", string.byte(key))
end
MOUSE.KeyDown:Connect(onKeyDown)