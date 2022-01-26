--CONFIGURATIONS--
local TimeInbetweenTraitors = 2 -- Change this to the amount of time you want to wait between detections
local SOF = Vector3.new(0, 2.5, 0) -- Change the Y axis (middle) to the height you want the billboardGUI to be, don't change x or z axis otherwise it might mess up the script
local SZ = UDim2.new(0, 200, 0, 50) -- Change the size to however you want it to be (only change if you know what your doing)
-- Scroll down for rest of the script













print("Executed!")
while wait(TimeInbetweenTraitors) do
for i,v in pairs(game.Workspace.Ragdolls:GetChildren()) do
if v:IsA("Model") then
local CD = v:FindFirstChild("CorpseData")
if CD then
local WhoKilled = v.CorpseData.KilledBy.Value
if v.CorpseData.Team.Value == "Innocent" or v.CorpseData.Team.Value == "Detective" then
local player = game.Players
local workspace = game.Workspace
if player:FindFirstChild(WhoKilled) then
local TheOne = player:FindFirstChild(WhoKilled)	
local BillboardGUI = Instance.new("BillboardGui")
local TextLabel = Instance.new("TextLabel")
if workspace:FindFirstChild(WhoKilled) then
TheOtherOne = workspace:FindFirstChild(WhoKilled)
local PlayerWhoKilled = TheOtherOne
print(PlayerWhoKilled)
BillboardGUI.Parent = PlayerWhoKilled.Head
BillboardGUI.StudsOffset = SOF
BillboardGUI.Size = SZ
BillboardGUI.Active = true
BillboardGUI.AlwaysOnTop = true
TextLabel.Parent = BillboardGUI
TextLabel.Text = "LIKELY TRAITOR"
TextLabel.TextScaled = true
TextLabel.Size = UDim2.new(0, 200, 0, 50)
end
end
end
end
end
end
end