local soundId = "rbxassetid://9043887091"

game.Players.PlayerAdded:Connect(function(player)
    local sound = Instance.new("Sound")
    sound.SoundId = soundId
    sound.Volume = 1
    sound.Looped = false
    sound.PlayOnRemove = true
    sound.Parent = workspace
    sound:Destroy()
end)
