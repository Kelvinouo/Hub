--lobby: GameId = 3258873704, PlaceId = 8542259458
--game: GameId = 3258873704, PlaceId = 8542275097

if game.PlaceId == 8542275097 then
    repeat
        wait()
    until game:IsLoaded() and game.Players.LocalPlayer and game.Players.LocalPlayer.Character
    wait(1)
else
    return
end
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
local teleport_function = queue_on_teleport or syn.queue_on_teleport
local lplr = game.Players.LocalPlayer
local TweenService = game:GetService("TweenService")
local veriosn = "0.5"

local a = Instance.new("ScreenGui")
a.Name = "?"
a.ResetOnSpawn = false
a.Parent = game:GetService("CoreGui")

local function text(texta, s)
    local waitingtime = s or 3
    coroutine.wrap(function()
        local textlabe = Instance.new("TextLabel")
        textlabe.Parent = a
        textlabe.AnchorPoint = Vector2.new(0.5, 0.5)
        textlabe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        textlabe.BorderSizePixel = 0
        textlabe.Position = UDim2.new(0.5, 0, 0.800000012, 0)
        textlabe.Size = UDim2.new(0, 0, 0, 30)
        textlabe.Font = Enum.Font.SourceSansLight
        textlabe.TextColor3 = Color3.fromRGB(0, 0, 0)
        textlabe.TextSize = 20.000
        for i = 1,#texta + 1 do
            local v = game:GetService("TextService"):GetTextSize(texta:sub(1, i), 20, Enum.Font.SourceSansLight, Vector2.new(9e9, 9e9))
            textlabe.Text = texta:sub(1, i)
            TweenService:Create(textlabe, TweenInfo.new(0.01), {Size = UDim2.new(0, v.x + 30, 0, v.y + 10)}):Play()
            wait(0.03)
        end
        wait(waitingtime)
        textlabe.Text = ""
        TweenService:Create(textlabe, TweenInfo.new(0.2), {Size = UDim2.new(0,0,0,0)}):Play()
        wait(0.2)
        textlabe:Destroy()
    end)()
end

local function twotext(sectext, texta, s)
    coroutine.wrap(function()
        local TextLable = Instance.new("TextLabel")
        TextLable.Parent = a
        TextLable.AnchorPoint = Vector2.new(0.5, 0.5)
        TextLable.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextLable.BorderSizePixel = 0
        TextLable.Position = UDim2.new(0.5, 0, 0.5, 0)
        TextLable.Size = UDim2.new(0, 0, 0, 30)
        TextLable.Font = Enum.Font.SourceSansLight
        TextLable.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextLable.TextSize = 20.000

        for i = 1,#sectext + 1 do
            local v = game:GetService("TextService"):GetTextSize(sectext:sub(1, i), 20, Enum.Font.SourceSansLight, Vector2.new(9e9, 9e9))
            TextLable.Text = sectext:sub(1, i)
            TweenService:Create(TextLable, TweenInfo.new(0.01), {Size = UDim2.new(0, v.x + 30, 0, v.y + 10)}):Play()
            wait(.03)
        end
        wait(0.1)
        local line = Instance.new("Frame")
        line.Name = "Line"
        line.Parent = a
        line.AnchorPoint = Vector2.new(0.5, 0.5)
        line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        line.BorderSizePixel = 0
        line.Position = UDim2.new(0.5, 0, 0.5, 0)
        line.Size = UDim2.new(0, 3, 0, 10)
        local textlabe = Instance.new("TextLabel")
        textlabe.Parent = a
        textlabe.AnchorPoint = Vector2.new(0.5, 0.5)
        textlabe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        textlabe.BorderSizePixel = 0
        textlabe.Position = UDim2.new(0.5, 0, 0.5, 0)
        textlabe.Size = UDim2.new(0, 0, 0, 30)
        textlabe.Font = Enum.Font.SourceSansLight
        textlabe.TextColor3 = Color3.fromRGB(0, 0, 0)
        textlabe.TextSize = 20.000
        TweenService:Create(TextLable, TweenInfo.new(0.4), {Position = TextLable.Position - UDim2.new(0, 0, 0, 50)}):Play()
        wait(0.04)
        TweenService:Create(line, TweenInfo.new(0.4), {Size = UDim2.new(0,3,0,20)}):Play()
        line.Position = line.Position - UDim2.new(0,0,0,25)
        line.Visible = true
        wait(0.1)

        for i = 1,#texta + 1 do
            local v = game:GetService("TextService"):GetTextSize(texta:sub(1, i), 20, Enum.Font.SourceSansLight, Vector2.new(9e9, 9e9))
            textlabe.Text = texta:sub(1, i)
            TweenService:Create(textlabe, TweenInfo.new(0.01), {Size = UDim2.new(0, v.x + 30, 0, v.y + 10)}):Play()
            wait(.05)
        end

        s = s or 3
        wait(s) -- score
        TextLable.Text = ""
        textlabe.Text = ""
        TweenService:Create(TextLable, TweenInfo.new(0.2), {Size = UDim2.new(0,0,0,0)}):Play()
        TweenService:Create(textlabe, TweenInfo.new(0.2), {Size = UDim2.new(0,0,0,0)}):Play()
        TweenService:Create(line, TweenInfo.new(0.2), {Size = UDim2.new(0,0,0,0)}):Play()
        wait(0.2)
        TextLable:Destroy()
        textlabe:Destroy()
        line:Destroy()
    end)()
end

function IsAlive(plr)
    if plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") and plr.Character:FindFirstChild("Humanoid") and plr.Character.Humanoid.Health > 0 then
        return true
    end
    return false
end

local function looptp(plr)
    repeat
        if IsAlive(plr) and IsAlive(lplr) then
            game:GetService("RunService").Heartbeat:Wait()
            game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
            if plr and plr.Character and plr.Character:FindFirstChild("HumanoidRootPart") then
                lplr.Character.HumanoidRootPart.CFrame = plr.Character.HumanoidRootPart.CFrame + plr.Character.HumanoidRootPart.CFrame.LookVector * -3 - Vector3.new(0, 6, 0)
            end
            game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").PlayerMelee:FireServer(plr)
        end
    until IsAlive(plr) == false or IsAlive(lplr) == false or plr.Character.HumanoidRootPart.Position.Y < -5
    text("Killed " .. plr.Name)
end

if game.PlaceVersion ~= 57 then
    twotext("! Game Update Detected !", "Please wait me to check is there anything changed (Fern#5747)", 5)
    return
end

game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").ChestUpdated.OnClientEvent:Connect(function(chest, t)
    for i,v in next, t do
        game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").ChestUpdate:FireServer(chest, v.Type, -v.Quantity)
    end
end)

repeat
    wait()
until IsAlive(lplr)

local start = tick()
twotext("Autowin Started", "Made by Fern#5747 v" .. veriosn)
teleport_function([[loadstring(game:HttpGet("https://raw.githubusercontent.com/Kelvinouo/Hub/master/skywars_autowin.lua", true))()]])

local got = 0
repeat
    for _,v in next, workspace.BlockContainer.Map.Chests:GetChildren() do
        if IsAlive(lplr) and v:FindFirstChild("PrimaryPart") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.PrimaryPart.CFrame + Vector3.new(0, 5, 0)
            wait(0.1)
            game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").ChestOpen:FireServer(v)
            got = got + 1
        end
    end
    wait()
until got >= 2

coroutine.wrap(function()
    for i = 1, 5 do
        game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").UpdateActiveItemType:FireServer("BronzeSword")
        game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").UpdateActiveItemType:FireServer("IronSword")
        game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").UpdateActiveItemType:FireServer("GoldSword")
        game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").UpdateActiveItemType:FireServer("DiamondSword")
        game:GetService("ReplicatedStorage"):FindFirstChild("events-shared/events@GlobalEvents").UpdateActiveItemType:FireServer("EmeraldSword")
        wait(0.5)
    end
end)()

for _,v in next, game.Players:GetPlayers() do
    if v ~= lplr and IsAlive(v) then
        looptp(v)
    end
end

for _,v in next, game.Players:GetPlayers() do
    if v ~= lplr and IsAlive(v) then
        looptp(v)
    end
end

twotext("Game Ended", "Took - " .. math.floor(tick() - start) .. "s")

game:GetService("ReplicatedStorage")["events-shared/events@GlobalEvents"].UpdateMatchmakingStatus:FireServer(true)
