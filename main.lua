--// Functions //--
local function MakeLibrary(Name, IntroEnabled, IntroText)

end
local function chatTags(ChatTagName, lplrname)
    local textChatService = game:GetService("TextChatService")
    textChatService.OnIncomingMessage = function(message: TextChatMessage)
        local properties = Instance.new("TextChatMessageProperties")
        if message.TextSource then
            local player = game:GetService("Players"):GetPlayerByUserId(message.TextSource.UserId)
            if player.Name == game.Players.LocalPlayer.Name then
                properties.PrefixText = "<font color='#00ffee'>[KAVIN OWNER]</font> " .. message.PrefixText
            end
        end
        return properties
    end
end