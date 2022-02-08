if game.PlaceId == 8542275097 then
    repeat
        wait()
    until game:IsLoaded() and game.Players.LocalPlayer and game.Players.LocalPlayer.Character
else
    return
end
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
local a = game:GetService("ReplicatedStorage"):WaitForChild("events-4gb")
local b = queue_on_teleport or syn.queue_on_teleport
local c = game.Players.LocalPlayer
local d = game:GetService("TweenService")
local e = "0.6a - 9/2"
local f = {FULLREMOTENAMES = {}, Remotes = {}}
local g = Instance.new("ScreenGui")
g.Name = "?"
g.ResetOnSpawn = false
g.Parent = game:GetService("CoreGui")
local function h(i, j)
    local k = j or 3
    coroutine.wrap(
        function()
            local l = Instance.new("TextLabel")
            l.Parent = g
            l.AnchorPoint = Vector2.new(0.5, 0.5)
            l.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            l.BorderSizePixel = 0
            l.Position = UDim2.new(0.5, 0, 0.800000012, 0)
            l.Size = UDim2.new(0, 0, 0, 30)
            l.Font = Enum.Font.SourceSansLight
            l.TextColor3 = Color3.fromRGB(0, 0, 0)
            l.TextSize = 20.000
            for m = 1, #i + 1 do
                local n =
                    game:GetService("TextService"):GetTextSize(
                    i:sub(1, m),
                    20,
                    Enum.Font.SourceSansLight,
                    Vector2.new(9e9, 9e9)
                )
                l.Text = i:sub(1, m)
                d:Create(l, TweenInfo.new(0.01), {Size = UDim2.new(0, n.x + 30, 0, n.y + 10)}):Play()
                wait(0.03)
            end
            wait(k)
            l.Text = ""
            d:Create(l, TweenInfo.new(0.2), {Size = UDim2.new(0, 0, 0, 0)}):Play()
            wait(0.2)
            l:Destroy()
        end
    )()
end
local function o(p, i, j)
    coroutine.wrap(
        function()
            local q = Instance.new("TextLabel")
            q.Parent = g
            q.AnchorPoint = Vector2.new(0.5, 0.5)
            q.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            q.BorderSizePixel = 0
            q.Position = UDim2.new(0.5, 0, 0.5, 0)
            q.Size = UDim2.new(0, 0, 0, 30)
            q.Font = Enum.Font.SourceSansLight
            q.TextColor3 = Color3.fromRGB(0, 0, 0)
            q.TextSize = 20.000
            for m = 1, #p + 1 do
                local n =
                    game:GetService("TextService"):GetTextSize(
                    p:sub(1, m),
                    20,
                    Enum.Font.SourceSansLight,
                    Vector2.new(9e9, 9e9)
                )
                q.Text = p:sub(1, m)
                d:Create(q, TweenInfo.new(0.01), {Size = UDim2.new(0, n.x + 30, 0, n.y + 10)}):Play()
                wait(.03)
            end
            wait(0.1)
            local r = Instance.new("Frame")
            r.Name = "Line"
            r.Parent = g
            r.AnchorPoint = Vector2.new(0.5, 0.5)
            r.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            r.BorderSizePixel = 0
            r.Position = UDim2.new(0.5, 0, 0.5, 0)
            r.Size = UDim2.new(0, 3, 0, 10)
            local l = Instance.new("TextLabel")
            l.Parent = g
            l.AnchorPoint = Vector2.new(0.5, 0.5)
            l.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            l.BorderSizePixel = 0
            l.Position = UDim2.new(0.5, 0, 0.5, 0)
            l.Size = UDim2.new(0, 0, 0, 30)
            l.Font = Enum.Font.SourceSansLight
            l.TextColor3 = Color3.fromRGB(0, 0, 0)
            l.TextSize = 20.000
            d:Create(q, TweenInfo.new(0.4), {Position = q.Position - UDim2.new(0, 0, 0, 50)}):Play()
            wait(0.04)
            d:Create(r, TweenInfo.new(0.4), {Size = UDim2.new(0, 3, 0, 20)}):Play()
            r.Position = r.Position - UDim2.new(0, 0, 0, 25)
            r.Visible = true
            wait(0.1)
            for m = 1, #i + 1 do
                local n =
                    game:GetService("TextService"):GetTextSize(
                    i:sub(1, m),
                    20,
                    Enum.Font.SourceSansLight,
                    Vector2.new(9e9, 9e9)
                )
                l.Text = i:sub(1, m)
                d:Create(l, TweenInfo.new(0.01), {Size = UDim2.new(0, n.x + 30, 0, n.y + 10)}):Play()
                wait(.05)
            end
            j = j or 3
            wait(j)
            q.Text = ""
            l.Text = ""
            d:Create(q, TweenInfo.new(0.2), {Size = UDim2.new(0, 0, 0, 0)}):Play()
            d:Create(l, TweenInfo.new(0.2), {Size = UDim2.new(0, 0, 0, 0)}):Play()
            d:Create(r, TweenInfo.new(0.2), {Size = UDim2.new(0, 0, 0, 0)}):Play()
            wait(0.2)
            q:Destroy()
            l:Destroy()
            r:Destroy()
        end
    )()
end
function getRemoteName(s)
    local t = {}
    pcall(
        function()
            local u = debug.getconstants(s)
            for m = 1, #u do
                local n = u[m]
                if typeof(n) == "string" and table.find(f.FULLREMOTENAMES, n) then
                    table.insert(t, a[n])
                end
            end
        end
    )
    return #t > 1 and t or #t == 1 and t[1] or nil
end
function hasItem(v)
    return f.inventoryController.hasItem(nil, v)
end
function IsAlive(w)
    if
        w.Character and w.Character:FindFirstChild("HumanoidRootPart") and w.Character:FindFirstChild("Humanoid") and
            w.Character.Humanoid.Health > 0
     then
        return true
    end
    return false
end
function magnitude(x, y, z)
    if typeof(x) == "Instance" and z then
        x = x.Character.HumanoidRootPart.Position
    end
    if typeof(y) == "Instance" and z then
        y = y.Character.HumanoidRootPart.Position
    end
    if typeof(x) == "Instance" and not z then
        x = x.Position
    end
    if typeof(y) == "Instance" and not z then
        y = y.Position
    end
    if typeof(x) == "CFrame" then
        x = x.p
    end
    if typeof(y) == "CFrame" then
        y = y.p
    end
    return (x - y).magnitude
end
function looptp(w)
    repeat
        if IsAlive(w) and IsAlive(c) then
            game:GetService("RunService").Heartbeat:Wait()
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            if w and w.Character and w.Character:FindFirstChild("HumanoidRootPart") then
                c.Character.HumanoidRootPart.CFrame =
                    w.Character.HumanoidRootPart.CFrame + w.Character.HumanoidRootPart.CFrame.LookVector * -3 -
                    Vector3.new(0, 6, 0)
            end
        end
    until IsAlive(w) == false or IsAlive(c) == false or w.Character.HumanoidRootPart.Position.Y < -5
    h("Killed " .. w.Name)
end
if game.PlaceVersion ~= 65 then
    o(
        "! Game Update Detected !",
        "Please wait me to check is there anything changed (Fern#5747 https://discord.gg/VDuRyuZ)",
        5
    )
    return
end
for m, n in next, getgc(true) do
    if typeof(n) == "table" then
        for A, B in next, n do
            if typeof(A) == "string" and (string.find(A, "Controller") or string.find(A, "Util")) then
                f[A] = n[A]
            end
        end
    end
end
for m, n in next, require(game.Players.LocalPlayer.PlayerScripts.TS.events).Events do
    table.insert(f.FULLREMOTENAMES, m)
end
for m, n in next, f do
    if typeof(n) == "table" then
        for A, B in next, n do
            local C = getRemoteName(B)
            if C then
                if not f.Remotes[m] then
                    f.Remotes[m] = {}
                end
                f.Remotes[m][A] = C
            end
        end
    end
end
f.Remotes["ChestController"]["onStart"].OnClientEvent:Connect(
    function(D, t)
        for E, n in next, t do
            f.Remotes["ChestController"]["updateChest"]:FireServer(D, n.Type, -n.Quantity)
        end
    end
)
repeat
    wait()
until IsAlive(c)
local F = tick()
o("Autowin Started", "Made by Fern#5747 v" .. e)
b([[loadstring(game:HttpGet("https://raw.githubusercontent.com/Kelvinouo/Hub/master/skywars_autowin.lua", true))()]])
local C = 0
repeat
    for E, n in next, workspace.BlockContainer.Map.Chests:GetChildren() do
        if IsAlive(c) and n:FindFirstChild("PrimaryPart") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = n.PrimaryPart.CFrame + Vector3.new(0, 5, 0)
            wait(0.1)
            f.Remotes["ChestController"]["openChest"]:FireServer(n)
            C = C + 1
        end
    end
    wait()
until C >= 2
c.Character.Hitbox:Destroy()
local G = {"Bronze", "Iron", "Gold", "Diamond", "Emerald"}
game:GetService("RunService").Heartbeat:Connect(
    function()
        for E, n in next, game.Players:GetPlayers() do
            if n ~= c and IsAlive(n) and IsAlive(c) and magnitude(n, c, 1) < 10 then
                local H = 1
                for m, B in next, G do
                    if hasItem(B .. "Sword") and m > H then
                        H = m
                    end
                end
                f.Remotes["HotbarController"]["updateActiveItem"]:FireServer(G[H] .. "Sword")
                f.Remotes["MeleeController"]["strikeMobile"]:FireServer(n)
            end
        end
    end
)
local I = 0
repeat
    I = 0
    for E, n in next, game.Players:GetPlayers() do
        if n ~= c and IsAlive(n) then
            I = I + 1
            looptp(n)
        end
    end
    wait()
until I == 0
o("Game Ended", "Took - " .. math.floor(tick() - F) .. "s")
f.Remotes["MatchmakingController"]["joinQueue"]:FireServer(true)
