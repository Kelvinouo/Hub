local UIS = game:GetService("UserInputService")
local Destroy = false
local keyblinds = {
    -- {Name = "Name", Key = Enum.KeyCode, CallBack = function}
}
local co = UIS.InputBegan:Connect(function(input, gameProcessedEvent)
    if Destroy then return end
    if gameProcessedEvent then return end
    if input.UserInputType == Enum.UserInputType.Keyboard then
        for i,v in next, keyblinds do
            if input.KeyCode == v.Key then
                v.CallBack()
            end
        end
    end
end)

return {
    RegisterKey = function(name, key, callback)
        table.insert(keyblinds, {
            Name = name,
            Key = key,
            CallBack = callback
        })
    end,
    Destroy = function()
        co:Disconnect()
        Destroy = true
    end,
    GetKeyBlinds = function()
        return keyblinds
    end
}
