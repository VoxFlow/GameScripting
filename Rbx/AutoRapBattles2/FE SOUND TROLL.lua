--Made by AdamRoots

while wait(1) do
   math.randomseed(tick())
   Workspace.RapBattles.Voice.TimePosition = math.random(0,Workspace.RapBattles.Voice.TimeLength)
   Workspace.RapBattles.Voice.Playing = true --enable announcer guy who broke into ur house and shouted E
   Workspace.RapBattles.Beat.TimePosition = math.random(0,Workspace.RapBattles.Beat.TimeLength)
   Workspace.RapBattles.Beat.Playing = false --enable moosik
end
