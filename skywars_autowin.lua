if game.PlaceId == 8542275097 then
    repeat
        wait()
    until game:IsLoaded() and game.Players.LocalPlayer and game.Players.LocalPlayer.Character
    wait(2)
else
    return
end
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
local a = queue_on_teleport or syn.queue_on_teleport
local b = game.Players.LocalPlayer
local c = game:GetService("TweenService")
local d = "0.5"
local e = Instance.new("ScreenGui")
e.Name = "?"
e.ResetOnSpawn = false
e.Parent = game:GetService("CoreGui")
local function f(g, h)
    local i = h or 3
    coroutine.wrap(
        function()
            local j = Instance.new("TextLabel")
            j.Parent = e
            j.AnchorPoint = Vector2.new(0.5, 0.5)
            j.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            j.BorderSizePixel = 0
            j.Position = UDim2.new(0.5, 0, 0.800000012, 0)
            j.Size = UDim2.new(0, 0, 0, 30)
            j.Font = Enum.Font.SourceSansLight
            j.TextColor3 = Color3.fromRGB(0, 0, 0)
            j.TextSize = 20.000
            for k = 1, #g + 1 do
                local l =
                    game:GetService("TextService"):GetTextSize(
                    g:sub(1, k),
                    20,
                    Enum.Font.SourceSansLight,
                    Vector2.new(9e9, 9e9)
                )
                j.Text = g:sub(1, k)
                c:Create(j, TweenInfo.new(0.01), {Size = UDim2.new(0, l.x + 30, 0, l.y + 10)}):Play()
                wait(0.03)
            end
            wait(i)
            j.Text = ""
            c:Create(j, TweenInfo.new(0.2), {Size = UDim2.new(0, 0, 0, 0)}):Play()
            wait(0.2)
            j:Destroy()
        end
    )()
end
local function m(n, g, h)
    coroutine.wrap(
        function()
            local o = Instance.new("TextLabel")
            o.Parent = e
            o.AnchorPoint = Vector2.new(0.5, 0.5)
            o.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            o.BorderSizePixel = 0
            o.Position = UDim2.new(0.5, 0, 0.5, 0)
            o.Size = UDim2.new(0, 0, 0, 30)
            o.Font = Enum.Font.SourceSansLight
            o.TextColor3 = Color3.fromRGB(0, 0, 0)
            o.TextSize = 20.000
            for k = 1, #n + 1 do
                local l =
                    game:GetService("TextService"):GetTextSize(
                    n:sub(1, k),
                    20,
                    Enum.Font.SourceSansLight,
                    Vector2.new(9e9, 9e9)
                )
                o.Text = n:sub(1, k)
                c:Create(o, TweenInfo.new(0.01), {Size = UDim2.new(0, l.x + 30, 0, l.y + 10)}):Play()
                wait(.03)
            end
            wait(0.1)
            local p = Instance.new("Frame")
            p.Name = "Line"
            p.Parent = e
            p.AnchorPoint = Vector2.new(0.5, 0.5)
            p.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            p.BorderSizePixel = 0
            p.Position = UDim2.new(0.5, 0, 0.5, 0)
            p.Size = UDim2.new(0, 3, 0, 10)
            local j = Instance.new("TextLabel")
            j.Parent = e
            j.AnchorPoint = Vector2.new(0.5, 0.5)
            j.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            j.BorderSizePixel = 0
            j.Position = UDim2.new(0.5, 0, 0.5, 0)
            j.Size = UDim2.new(0, 0, 0, 30)
            j.Font = Enum.Font.SourceSansLight
            j.TextColor3 = Color3.fromRGB(0, 0, 0)
            j.TextSize = 20.000
            c:Create(o, TweenInfo.new(0.4), {Position = o.Position - UDim2.new(0, 0, 0, 50)}):Play()
            wait(0.04)
            c:Create(p, TweenInfo.new(0.4), {Size = UDim2.new(0, 3, 0, 20)}):Play()
            p.Position = p.Position - UDim2.new(0, 0, 0, 25)
            p.Visible = true
            wait(0.1)
            for k = 1, #g + 1 do
                local l =
                    game:GetService("TextService"):GetTextSize(
                    g:sub(1, k),
                    20,
                    Enum.Font.SourceSansLight,
                    Vector2.new(9e9, 9e9)
                )
                j.Text = g:sub(1, k)
                c:Create(j, TweenInfo.new(0.01), {Size = UDim2.new(0, l.x + 30, 0, l.y + 10)}):Play()
                wait(.05)
            end
            h = h or 3
            wait(h)
            o.Text = ""
            j.Text = ""
            c:Create(o, TweenInfo.new(0.2), {Size = UDim2.new(0, 0, 0, 0)}):Play()
            c:Create(j, TweenInfo.new(0.2), {Size = UDim2.new(0, 0, 0, 0)}):Play()
            c:Create(p, TweenInfo.new(0.2), {Size = UDim2.new(0, 0, 0, 0)}):Play()
            wait(0.2)
            o:Destroy()
            j:Destroy()
            p:Destroy()
        end
    )()
end
function IsAlive(q)
    if
        q.Character and q.Character:FindFirstChild("HumanoidRootPart") and q.Character:FindFirstChild("Humanoid") and
            q.Character.Humanoid.Health > 0
     then
        return true
    end
    return false
end
local function r(q)
    repeat
        if IsAlive(q) and IsAlive(b) then
            game:GetService("RunService").Heartbeat:Wait()
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            if q and q.Character and q.Character:FindFirstChild("HumanoidRootPart") then
                b.Character.HumanoidRootPart.CFrame =
                    q.Character.HumanoidRootPart.CFrame + q.Character.HumanoidRootPart.CFrame.LookVector * -3 -
                    Vector3.new(0, 6, 0)
            end
            game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").PlayerMelee:FireServer(
                q
            )
        end
    until IsAlive(q) == false or IsAlive(b) == false or q.Character.HumanoidRootPart.Position.Y < -5
    f("Killed " .. q.Name)
end
if game.PlaceVersion ~= 58 then
    m("! Game Update Detected !", "Please wait me to check is there anything changed (Fern#5747)", 5)
    return
end
game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").ChestUpdated.OnClientEvent:Connect(
    function(s, t)
        for k, l in next, t do
            game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").ChestUpdate:FireServer(
                s,
                l.Type,
                -l.Quantity
            )
        end
    end
)
repeat
    wait()
until IsAlive(b)
local u = tick()
m("Autowin Started", "Made by Fern#5747 v" .. d)
a([[loadstring(game:HttpGet("https://raw.githubusercontent.com/Kelvinouo/Hub/master/skywars_autowin.lua", true))()]])
local v = 0
repeat
    for w, l in next, workspace.BlockContainer.Map.Chests:GetChildren() do
        if IsAlive(b) and l:FindFirstChild("PrimaryPart") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = l.PrimaryPart.CFrame + Vector3.new(0, 5, 0)
            wait(0.1)
            game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").ChestOpen:FireServer(
                l
            )
            v = v + 1
        end
    end
    wait()
until v >= 2
coroutine.wrap(
    function()
        for k = 1, 5 do
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
for w, l in next, game.Players:GetPlayers() do
    if l ~= b and IsAlive(l) then
        r(l)
    end
end
for w, l in next, game.Players:GetPlayers() do
    if l ~= b and IsAlive(l) then
        r(l)
    end
end
m("Game Ended", "Took - " .. math.floor(tick() - u) .. "s")
game:GetService("ReplicatedStorage")["events-shared/events@GlobalEvents"].UpdateMatchmakingStatus:FireServer(true)
