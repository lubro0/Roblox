local shutdownCommand = "!shutdown"
local shutdownUser = "OoOCatMiai"
local shutdownReason = "Shutdown"

game.Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(message)
        if message == shutdownCommand and player.Name == shutdownUser then
            for _, targetPlayer in pairs(game.Players:GetPlayers()) do
                targetPlayer:Kick(shutdownReason)
            end
        end
    end)
end)
