local MessagingService = game:GetService("MessagingService")
local shutdownCommand = "!shutdown"
local shutdownUser = "OoOCatMiai"
local shutdownReason = "Shutdown"

MessagingService:SubscribeAsync("ShutdownSignal", function()
    for _, player in pairs(game.Players:GetPlayers()) do
        player:Kick(shutdownReason)
    end
end)

game.Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(message)
        if message == shutdownCommand and player.Name == shutdownUser then
            MessagingService:PublishAsync("ShutdownSignal", {})
        end
    end)
end)
