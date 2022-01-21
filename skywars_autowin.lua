if game.PlaceId == 8542275097 then
    repeat
        wait()
    until game:IsLoaded() and game.Players.LocalPlayer and game.Players.LocalPlayer.Character
    wait(2)
else
    return
end
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
local a = game:GetService("ReplicatedStorage"):WaitForChild("events-shared/events@GlobalEvents")
local b = queue_on_teleport or syn.queue_on_teleport
local c = game.Players.LocalPlayer
local d = game:GetService("TweenService")
local e = "0.5b"
local f = Instance.new("ScreenGui")
f.Name = "?"
f.ResetOnSpawn = false
f.Parent = game:GetService("CoreGui")
local function g(h, i)
    local j = i or 3
    coroutine.wrap(
        function()
            local k = Instance.new("TextLabel")
            k.Parent = f
            k.AnchorPoint = Vector2.new(0.5, 0.5)
            k.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            k.BorderSizePixel = 0
            k.Position = UDim2.new(0.5, 0, 0.800000012, 0)
            k.Size = UDim2.new(0, 0, 0, 30)
            k.Font = Enum.Font.SourceSansLight
            k.TextColor3 = Color3.fromRGB(0, 0, 0)
            k.TextSize = 20.000
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
                wait(0.03)
            end
            wait(j)
            k.Text = ""
            d:Create(k, TweenInfo.new(0.2), {Size = UDim2.new(0, 0, 0, 0)}):Play()
            wait(0.2)
            k:Destroy()
        end
    )()
end
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
function IsAlive(r)
    if
        r.Character and r.Character:FindFirstChild("HumanoidRootPart") and r.Character:FindFirstChild("Humanoid") and
            r.Character.Humanoid.Health > 0
     then
        return true
    end
    return false
end
function magnitude(s, t, u)
    if typeof(s) == "Instance" and u then
        s = s.Character.HumanoidRootPart.Position
    end
    if typeof(t) == "Instance" and u then
        t = t.Character.HumanoidRootPart.Position
    end
    if typeof(s) == "Instance" and not u then
        s = s.Position
    end
    if typeof(t) == "Instance" and not u then
        t = t.Position
    end
    if typeof(s) == "CFrame" then
        s = s.p
    end
    if typeof(t) == "CFrame" then
        t = t.p
    end
    return (s - t).magnitude
end
function looptp(r)
    repeat
        if IsAlive(r) and IsAlive(c) then
            game:GetService("RunService").Heartbeat:Wait()
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            if r and r.Character and r.Character:FindFirstChild("HumanoidRootPart") then
                c.Character.HumanoidRootPart.CFrame =
                    r.Character.HumanoidRootPart.CFrame + r.Character.HumanoidRootPart.CFrame.LookVector * -3 -
                    Vector3.new(0, 6, 0)
            end
        end
    until IsAlive(r) == false or IsAlive(c) == false or r.Character.HumanoidRootPart.Position.Y < -5
    g("Killed " .. r.Name)
end
if game.PlaceVersion ~= 59 then
    n("! Game Update Detected !", "Please wait me to check is there anything changed (Fern#5747)", 5)
    return
end
a.ChestUpdated.OnClientEvent:Connect(
    function(v, w)
        for l, m in next, w do
            a.ChestUpdate:FireServer(v, m.Type, -m.Quantity)
        end
    end
)
repeat
    wait()
until IsAlive(c)
local x = tick()
n("Autowin Started", "Made by Fern#5747 v" .. e)
b([[loadstring(game:HttpGet("https://raw.githubusercontent.com/Kelvinouo/Hub/master/skywars_autowin.lua", true))()]])
local y = 0
repeat
    for z, m in next, workspace.BlockContainer.Map.Chests:GetChildren() do
        if IsAlive(c) and m:FindFirstChild("PrimaryPart") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = m.PrimaryPart.CFrame + Vector3.new(0, 5, 0)
            wait(0.1)
            a.ChestOpen:FireServer(m)
            y = y + 1
        end
    end
    wait()
until y >= 2
c.Character.Hitbox:Destroy()
coroutine.wrap(
    function()
        for l = 1, 5 do
            a.UpdateActiveItemType:FireServer("BronzeSword")
            a.UpdateActiveItemType:FireServer("IronSword")
            a.UpdateActiveItemType:FireServer("GoldSword")
            a.UpdateActiveItemType:FireServer("DiamondSword")
            a.UpdateActiveItemType:FireServer("EmeraldSword")
            wait(0.5)
        end
    end
)()
game:GetService("RunService").Heartbeat:Connect(
    function()
        for z, m in next, game.Players:GetPlayers() do
            if m ~= c and IsAlive(m) and IsAlive(c) and magnitude(m, c, 1) < 10 then
                a.PlayerMelee:FireServer(m)
            end
        end
    end
)
local A = 0
repeat
    A = 0
    for z, m in next, game.Players:GetPlayers() do
        if m ~= c and IsAlive(m) then
            A = A + 1
            looptp(m)
        end
    end
    wait()
until A == 0
n("Game Ended", "Took - " .. math.floor(tick() - x) .. "s")
game:GetService("ReplicatedStorage")["events-shared/events@GlobalEvents"].UpdateMatchmakingStatus:FireServer(true)
