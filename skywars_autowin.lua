if game.GameId == 3258873704 then
    repeat
        wait()
    until game:IsLoaded() and game.Players.LocalPlayer and game.Players.LocalPlayer.Character
end
wait(3)
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
local a = queue_on_teleport or syn.queue_on_teleport
local b = game.Players.LocalPlayer
local c = game:GetService("TweenService")
a([[loadstring(game:HttpGet("https://raw.githubusercontent.com/Kelvinouo/Hub/master/skywars_autowin.lua", true))()]])
local d = Instance.new("ScreenGui")
d.Name = "?"
d.ResetOnSpawn = false
d.Parent = game:GetService("CoreGui")
local function e(f, g)
    local h = g or 3
    coroutine.wrap(
        function()
            local i = Instance.new("TextLabel")
            i.Parent = d
            i.AnchorPoint = Vector2.new(0.5, 0.5)
            i.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            i.BorderSizePixel = 0
            i.Position = UDim2.new(0.5, 0, 0.800000012, 0)
            i.Size = UDim2.new(0, 0, 0, 30)
            i.Font = Enum.Font.SourceSansLight
            i.TextColor3 = Color3.fromRGB(0, 0, 0)
            i.TextSize = 20.000
            for j = 1, #f + 1 do
                local k =
                    game:GetService("TextService"):GetTextSize(
                    f:sub(1, j),
                    20,
                    Enum.Font.SourceSansLight,
                    Vector2.new(9e9, 9e9)
                )
                i.Text = f:sub(1, j)
                c:Create(i, TweenInfo.new(0.01), {Size = UDim2.new(0, k.x + 30, 0, k.y + 10)}):Play()
                wait(0.03)
            end
            wait(h)
            i.Text = ""
            c:Create(i, TweenInfo.new(0.2), {Size = UDim2.new(0, 0, 0, 0)}):Play()
            wait(0.2)
            i:Destroy()
        end
    )()
end
local function l(m, f, g)
    coroutine.wrap(
        function()
            local n = Instance.new("TextLabel")
            n.Parent = d
            n.AnchorPoint = Vector2.new(0.5, 0.5)
            n.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            n.BorderSizePixel = 0
            n.Position = UDim2.new(0.5, 0, 0.5, 0)
            n.Size = UDim2.new(0, 0, 0, 30)
            n.Font = Enum.Font.SourceSansLight
            n.TextColor3 = Color3.fromRGB(0, 0, 0)
            n.TextSize = 20.000
            for j = 1, #m + 1 do
                local k =
                    game:GetService("TextService"):GetTextSize(
                    m:sub(1, j),
                    20,
                    Enum.Font.SourceSansLight,
                    Vector2.new(9e9, 9e9)
                )
                n.Text = m:sub(1, j)
                c:Create(n, TweenInfo.new(0.01), {Size = UDim2.new(0, k.x + 30, 0, k.y + 10)}):Play()
                wait(.03)
            end
            wait(0.1)
            local o = Instance.new("Frame")
            o.Name = "Line"
            o.Parent = d
            o.AnchorPoint = Vector2.new(0.5, 0.5)
            o.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            o.BorderSizePixel = 0
            o.Position = UDim2.new(0.5, 0, 0.5, 0)
            o.Size = UDim2.new(0, 3, 0, 10)
            local i = Instance.new("TextLabel")
            i.Parent = d
            i.AnchorPoint = Vector2.new(0.5, 0.5)
            i.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            i.BorderSizePixel = 0
            i.Position = UDim2.new(0.5, 0, 0.5, 0)
            i.Size = UDim2.new(0, 0, 0, 30)
            i.Font = Enum.Font.SourceSansLight
            i.TextColor3 = Color3.fromRGB(0, 0, 0)
            i.TextSize = 20.000
            c:Create(n, TweenInfo.new(0.4), {Position = n.Position - UDim2.new(0, 0, 0, 50)}):Play()
            wait(0.04)
            c:Create(o, TweenInfo.new(0.4), {Size = UDim2.new(0, 3, 0, 20)}):Play()
            o.Position = o.Position - UDim2.new(0, 0, 0, 25)
            o.Visible = true
            wait(0.1)
            for j = 1, #f + 1 do
                local k =
                    game:GetService("TextService"):GetTextSize(
                    f:sub(1, j),
                    20,
                    Enum.Font.SourceSansLight,
                    Vector2.new(9e9, 9e9)
                )
                i.Text = f:sub(1, j)
                c:Create(i, TweenInfo.new(0.01), {Size = UDim2.new(0, k.x + 30, 0, k.y + 10)}):Play()
                wait(.05)
            end
            g = g or 3
            wait(g)
            n.Text = ""
            i.Text = ""
            c:Create(n, TweenInfo.new(0.2), {Size = UDim2.new(0, 0, 0, 0)}):Play()
            c:Create(i, TweenInfo.new(0.2), {Size = UDim2.new(0, 0, 0, 0)}):Play()
            c:Create(o, TweenInfo.new(0.2), {Size = UDim2.new(0, 0, 0, 0)}):Play()
            wait(0.2)
            n:Destroy()
            i:Destroy()
            o:Destroy()
        end
    )()
end
function IsAlive(p)
    if
        p.Character and p.Character:FindFirstChild("HumanoidRootPart") and p.Character:FindFirstChild("Humanoid") and
            p.Character.Humanoid.Health > 0
     then
        return true
    end
    return false
end
local function q(p)
    repeat
        if IsAlive(p) and IsAlive(b) then
            game:GetService("RunService").Heartbeat:Wait()
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            if p and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                b.Character.HumanoidRootPart.CFrame =
                    p.Character.HumanoidRootPart.CFrame + p.Character.HumanoidRootPart.CFrame.LookVector * -3 -
                    Vector3.new(0, 6, 0)
            end
            game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").PlayerMelee:FireServer(
                p
            )
        end
    until IsAlive(p) == false or IsAlive(b) == false or p.Character.HumanoidRootPart.Position.Y < -5
    e("Killed " .. p.Name)
end
game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").ChestUpdated.OnClientEvent:Connect(
    function(r, s)
        for j, k in next, s do
            game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").ChestUpdate:FireServer(
                r,
                k.Type,
                -k.Quantity
            )
        end
    end
)
repeat
    wait()
until IsAlive(b)
local t = tick()
l("Autowin Started", "Made by Fern#5747 !! you dont need to put script to ur autoexec rn !!")
local u = 0
repeat
    for v, k in next, workspace.BlockContainer.Map.Chests:GetChildren() do
        if IsAlive(b) and k:FindFirstChild("PrimaryPart") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = k.PrimaryPart.CFrame + Vector3.new(0, 5, 0)
            wait(0.1)
            game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").ChestOpen:FireServer(
                k
            )
            u = u + 1
        end
    end
    wait()
until u >= 2
coroutine.wrap(
    function()
        for j = 1, 5 do
            game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").UpdateActiveItemType:FireServer(
                "BronzeSword"
            )
            game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").UpdateActiveItemType:FireServer(
                "IronSword"
            )
            game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").UpdateActiveItemType:FireServer(
                "GoldSword"
            )
            game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").UpdateActiveItemType:FireServer(
                "DiamondSword"
            )
            game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").UpdateActiveItemType:FireServer(
                "EmeraldSword"
            )
            wait(0.5)
        end
    end
)()
for v, k in next, game.Players:GetPlayers() do
    if k ~= b and IsAlive(k) then
        q(k)
    end
end
for v, k in next, game.Players:GetPlayers() do
    if k ~= b and IsAlive(k) then
        q(k)
    end
end
l("Game Ended", "Took - " .. math.floor(tick() - t) .. "s")
game:GetService("ReplicatedStorage")["events-shared/events@GlobalEvents"].UpdateMatchmakingStatus:FireServer(true)
