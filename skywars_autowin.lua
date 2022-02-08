if game.PlaceId == 8542275097 then
    repeat
        wait()
    until game:IsLoaded() and game.Players.LocalPlayer and game.Players.LocalPlayer.Character
else
    return
end
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
local b = queue_on_teleport or syn.queue_on_teleport
local c = game.Players.LocalPlayer
local d = game:GetService("TweenService")
local e = "0.5d"
local f = Instance.new("ScreenGui")
f.Name = "?"
f.ResetOnSpawn = false
f.Parent = game:GetService("CoreGui")
local function n(o, h, i)
    coroutine.wrap(
        function()
            local p = Instance.new("TextLabel")
            p.Parent = f
            p.AnchorPoint = Vector2.new(0.5, 0.5)
            p.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            p.BorderSizePixel = 0
            p.Position = UDim2.new(0.5, 0, 0.5, 0)
            p.Size = UDim2.new(0, 0, 0, 30)
            p.Font = Enum.Font.SourceSansLight
            p.TextColor3 = Color3.fromRGB(0, 0, 0)
            p.TextSize = 20.000
            for l = 1, #o + 1 do
                local m =
                    game:GetService("TextService"):GetTextSize(
                    o:sub(1, l),
                    20,
                    Enum.Font.SourceSansLight,
                    Vector2.new(9e9, 9e9)
                )
                p.Text = o:sub(1, l)
                d:Create(p, TweenInfo.new(0.01), {Size = UDim2.new(0, m.x + 30, 0, m.y + 10)}):Play()
                wait(.03)
            end
            wait(0.1)
            local q = Instance.new("Frame")
            q.Name = "Line"
            q.Parent = f
            q.AnchorPoint = Vector2.new(0.5, 0.5)
            q.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            q.BorderSizePixel = 0
            q.Position = UDim2.new(0.5, 0, 0.5, 0)
            q.Size = UDim2.new(0, 3, 0, 10)
            local k = Instance.new("TextLabel")
            k.Parent = f
            k.AnchorPoint = Vector2.new(0.5, 0.5)
            k.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            k.BorderSizePixel = 0
            k.Position = UDim2.new(0.5, 0, 0.5, 0)
            k.Size = UDim2.new(0, 0, 0, 30)
            k.Font = Enum.Font.SourceSansLight
            k.TextColor3 = Color3.fromRGB(0, 0, 0)
            k.TextSize = 20.000
            d:Create(p, TweenInfo.new(0.4), {Position = p.Position - UDim2.new(0, 0, 0, 50)}):Play()
            wait(0.04)
            d:Create(q, TweenInfo.new(0.4), {Size = UDim2.new(0, 3, 0, 20)}):Play()
            q.Position = q.Position - UDim2.new(0, 0, 0, 25)
            q.Visible = true
            wait(0.1)
            for l = 1, #h + 1 do
                local m =
                    game:GetService("TextService"):GetTextSize(
                    h:sub(1, l),
                    20,
                    Enum.Font.SourceSansLight,
                    Vector2.new(9e9, 9e9)
                )
                k.Text = h:sub(1, l)
                d:Create(k, TweenInfo.new(0.01), {Size = UDim2.new(0, m.x + 30, 0, m.y + 10)}):Play()
                wait(.05)
            end
            i = i or 3
            wait(i)
            p.Text = ""
            k.Text = ""
            d:Create(p, TweenInfo.new(0.2), {Size = UDim2.new(0, 0, 0, 0)}):Play()
            d:Create(k, TweenInfo.new(0.2), {Size = UDim2.new(0, 0, 0, 0)}):Play()
            d:Create(q, TweenInfo.new(0.2), {Size = UDim2.new(0, 0, 0, 0)}):Play()
            wait(0.2)
            p:Destroy()
            k:Destroy()
            q:Destroy()
        end
    )()
end
n("! Game Update Detected !", "Please wait me to check is there anything changed (Fern#5747 https://discord.gg/VDuRyuZ)", 5)
