--// Functions //--
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
--// Create Window
local BedwarsHub = {}
local function BedwarsHub.newWindow(name, introEnabled, introText)
    local Window = OrionLib:MakeWindow({Name = name, HidePremium = false, SaveConfig = true, ConfigFolder = "BedwarsHub"}, IntroEnabled = introEnabled, IntroText = IntroText)
end
--//
local function BedwarsHub.newTab(TabName)
    local Tab = Window:MakeTab({
        Name = TabName,
        Icon = nil,
        PremiumOnly = false
    })
end

local function BedwarsHub.newSection(SectionName)
   
end
return BedwarsHub
-----------------------------------------------------------------------------------------------------------------------------------------------------------
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