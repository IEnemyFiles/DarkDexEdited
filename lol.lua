local function generatePrivateServerLinkCode()
    local characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    local code = ""
    for _ = 1, 32 do -- You can customize the length of the code
        local randomIndex = math.random(1, #characters)
        code = code .. string.sub(characters, randomIndex, randomIndex)
    end
    return code
end

game.Players.PlayerAdded:Connect(function(player)
    local privateServerLinkCode = generatePrivateServerLinkCode()
    print("Private Server Link Code for " .. player.Name .. ": " .. privateServerLinkCode)
end)
