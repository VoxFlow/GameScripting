game:GetService("RunService").RenderStepped:Connect(function()
    for i, thing in pairs(game.Workspace.Items:GetChildren()) do

        local a = thing

        if a:IsA("Part") then
        if a:FindFirstChildOfClass("BillboardGui") then
        else
            local e = Instance.new("BillboardGui")
            e.Parent = a
            e.Adornee = a
            e.AlwaysOnTop = true
            e.Size = UDim2.new(5,0,5,0)
            local f = Instance.new("TextLabel")
            f.Parent = e
                    f.Text = string.gsub(a.Name, "Item_", "")
                f.Font = Enum.Font.SciFi
            f.BackgroundTransparency = 1
                f.TextScaled = true
                f.Size = UDim2.new(1,0,1,0)
                if string.find(a.Name, "M11") then
                    f.TextColor3 = Color3.new(0.615686, 0, 1)
                else
                    if string.find(a.Name, "Scout") then
                        f.TextColor3 = Color3.new(1, 0, 0.0156863)
                        else
                        if string.find(a.Name, "Eagle") then
                            f.TextColor3 = Color3.new(0.615686, 0, 1)
                        else
                            if string.find(a.Name, "M4A1") then
                                f.TextColor3 = Color3.new(0.615686, 0, 1)
                                else


                                f.TextColor3 = Color3.new(0.215686, 1, 0)
                                end
                            end
                    end
                    end
            f.TextStrokeTransparency = 0.5
        end

        end
        end
end)