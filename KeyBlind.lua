local Destroy = false
local keyblinds = {
    -- {Name = "Name", Key = Enum.KeyCode, CallBack = function}
}
UIS.InputBegan:Connect(function(input, gameProcessedEvent)
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
  registerKey = function(name, key, callback)
      table.insert(keyblinds, {
          Name = name,
          Key = key,
          CallBack = callback
      })
  end,
  Destroy = fucntion()
      Destroy = true
  end
}
