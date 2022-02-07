local song = "Brainwashed"

request = game:HttpGet("https://lyrics.flc.bar/search?song=" .. song)

decoded = game.HttpService:JSONDecode(request)

local lyrics = {}
for i in decoded.lyrics:gmatch("[^\r\n]+") do
   table.insert(lyrics, i)
end

for i, v in pairs(lyrics) do
   wait(3)
   game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v, "All")
end