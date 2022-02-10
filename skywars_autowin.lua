if game.PlaceId == 8542275097 then
    repeat
        wait()
    until game:IsLoaded() and game.Players.LocalPlayer and game.Players.LocalPlayer.Character
else
    return
end
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
local a
local b = queue_on_teleport or syn.queue_on_teleport
local c = game.Players.LocalPlayer
local d = game:GetService("TweenService")
local e = "0.6b - 10/2"
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
function getHoldItem()
    local w = f.HotbarController:getHeldItemInfo()
    return w and w.Name or nil
end
function IsAlive(x)
    if
        x.Character and x.Character:FindFirstChild("HumanoidRootPart") and x.Character:FindFirstChild("Humanoid") and
            x.Character.Humanoid.Health > 0
     then
        return true
    end
    return false
end
function magnitude(y, z, A)
    if typeof(y) == "Instance" and A then
        y = y.Character.HumanoidRootPart.Position
    end
    if typeof(z) == "Instance" and A then
        z = z.Character.HumanoidRootPart.Position
    end
    if typeof(y) == "Instance" and not A then
        y = y.Position
    end
    if typeof(z) == "Instance" and not A then
        z = z.Position
    end
    if typeof(y) == "CFrame" then
        y = y.p
    end
    if typeof(z) == "CFrame" then
        z = z.p
    end
    return (y - z).magnitude
end
function looptp(x)
    repeat
        if IsAlive(x) and IsAlive(c) then
            game:GetService("RunService").Heartbeat:Wait()
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            if x and x.Character and x.Character:FindFirstChild("HumanoidRootPart") then
                c.Character.HumanoidRootPart.CFrame =
                    x.Character.HumanoidRootPart.CFrame + x.Character.HumanoidRootPart.CFrame.LookVector * -3 -
                    Vector3.new(0, 6, 0)
            end
        end
    until IsAlive(x) == false or IsAlive(c) == false or x.Character.HumanoidRootPart.Position.Y < -5
    h("Killed " .. x.Name)
end
if game.PlaceVersion ~= 68 then
    o(
        "! Game Update Detected !",
        "Please wait me to check is there anything changed (Fern#5747 https://discord.gg/VDuRyuZ)",
        5
    )
    return
end
for m, n in next, getgc(true) do
    if typeof(n) == "table" then
        for B, C in next, n do
            if typeof(B) == "string" and (string.find(B, "Controller") or string.find(B, "Util")) then
                f[B] = n[B]
            end
        end
    end
end
for m, n in next, require(game.Players.LocalPlayer.PlayerScripts.TS.events).Events do
    table.insert(f.FULLREMOTENAMES, m)
end
for m, n in next, game.ReplicatedStorage:GetDescendants() do
    if table.find(f.FULLREMOTENAMES, n.Name) then
        a = n.Parent
        break
    end
end
for m, n in next, f do
    if typeof(n) == "table" then
        for B, C in next, n do
            local D = getRemoteName(C)
            if D then
                if not f.Remotes[m] then
                    f.Remotes[m] = {}
                end
                f.Remotes[m][B] = D
            end
        end
    end
end
f.Remotes["ChestController"]["onStart"].OnClientEvent:Connect(
    function(E, t)
        for F, n in next, t do
            f.Remotes["ChestController"]["updateChest"]:FireServer(E, n.Type, -n.Quantity)
        end
    end
)
repeat
    wait()
until IsAlive(c)
local G = tick()
o("Autowin Started", "Made by Fern#5747 v" .. e)
b([[loadstring(game:HttpGet("https://raw.githubusercontent.com/Kelvinouo/Hub/master/skywars_autowin.lua", true))()]])
local D = 0
repeat
    for F, n in next, workspace.BlockContainer.Map.Chests:GetChildren() do
        if IsAlive(c) and n:FindFirstChild("PrimaryPart") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = n.PrimaryPart.CFrame + Vector3.new(0, 5, 0)
            wait(0.1)
            f.Remotes["ChestController"]["openChest"]:FireServer(n)
            D = D + 1
        end
    end
    wait()
until D >= 2
c.Character.Hitbox:Destroy()
local H = {"Bronze", "Iron", "Gold", "Diamond", "Emerald"}
game:GetService("RunService").Heartbeat:Connect(
    function()
        for F, n in next, game.Players:GetPlayers() do
            if n ~= c and IsAlive(n) and IsAlive(c) and magnitude(n, c, 1) < 10 then
                local I = 1
                for m, C in next, H do
                    if hasItem(C .. "Sword") and m > I then
                        I = m
                    end
                end
                f.Remotes["HotbarController"]["updateActiveItem"]:FireServer(H[I] .. "Sword")
                f.Remotes["MeleeController"]["strikeMobile"]:FireServer(n)
            end
        end
    end
)
local J = 0
repeat
    J = 0
    for F, n in next, game.Players:GetPlayers() do
        if n ~= c and IsAlive(n) then
            J = J + 1
            looptp(n)
        end
    end
    wait()
until J == 0
o("Game Ended", "Took - " .. math.floor(tick() - G) .. "s")
f.Remotes["MatchmakingController"]["joinQueue"]:FireServer(true)
