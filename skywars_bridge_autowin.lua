if game.PlaceId == 8951451142 then
    repeat
        wait()
    until game:IsLoaded() and game.Players.LocalPlayer and game.Players.LocalPlayer.Character
else
    return
end
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
local a = queue_on_teleport or syn.queue_on_teleport
local b = game.Players.LocalPlayer
function IsAlive(c)
    c = c and c or b
    if
        c.Character and c.Character:FindFirstChild("HumanoidRootPart") and c.Character:FindFirstChild("Humanoid") and
            c.Character.Humanoid.Health > 0
     then
        return true
    end
    return false
end
function getRoot(c)
    c = c and c or b
    if not IsAlive(c) then
        return
    end
    return c.Character.HumanoidRootPart
end
a(
    [[loadstring(game:HttpGet("https://raw.githubusercontent.com/Kelvinouo/Hub/master/skywars_bridge_autowin.lua", true))()]]
)
while true do
    if IsAlive() then
        for d, e in next, workspace.BlockContainer.Map.Portals:GetChildren() do
            if firetouchinterest then
                firetouchinterest(getRoot(), e, 0)
                firetouchinterest(getRoot(), e, 1)
            else
                getRoot().CFrame = e.CFrame
                getRoot().Velocity = Vector3.new(0, 0, 0)
                wait(0.1)
            end
        end
    end
    task.wait()
end
