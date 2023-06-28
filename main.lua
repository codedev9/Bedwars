shared.VapeIndependent = true
shared.CustomSaveVape = "vape"
local GuiLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
--// 
local Combat = GuiLibrary.ObjectsThatCanBeSaved.CombatWindow.Api
local Blatant = GuiLibrary.ObjectsThatCanBeSaved.BlatantWindow.Api
local Render = GuiLibrary.ObjectsThatCanBeSaved.RenderWindow.Api
local Utility = GuiLibrary.ObjectsThatCanBeSaved.UtilityWindow.Api
local World = GuiLibrary.ObjectsThatCanBeSaved.WorldWindow.Api
local NotificationService = game:GetService("NotificationService")
--//
local function warningNotification(title, text, delay)
	local suc, res = pcall(function()
		local frame = GuiLibrary.CreateNotification(title, text, delay, "assets/WarningNotification.png")
		frame.Frame.Frame.ImageColor3 = Color3.fromRGB(236, 129, 44)
		return frame
	end)
	return (suc and res)
end
--//
local AntiCheatDisabler = Blatant.CreateOptionsButton({
    Name = "AntiCheatDisabler", -- name of object
    Function = function(callback) -- function that is called when toggled
        if callback then
            warningNotification("Vape", "Disabled Anticheat", 3)
        else
            print("disabled")
        end
    end,
    HoverText = "disables anticheat", -- text that will show up after hovering over the button (optional)
    Default = true, -- enabled on startup (optional)
    ExtraText = function() return "fixed" end -- text that goes next to the button in Text GUI (optional)
})
    
    local AntiCheatDisabler = Blatant.CreateOptionsButton({
    Name = "InstaKill", -- name of object
    Function = function(callback) -- function that is called when toggled
        if callback then
            warningNotification("Vape", "InstaKill Is Patched", 3)
        else
            print("disabled")
        end
    end,
    HoverText = "insta kill", -- text that will show up after hovering over the button (optional)
    Default = true, -- enabled on startup (optional)
    ExtraText = function() return "patched" end -- text that goes next to the button in Text GUI (optional)
})
        local AntiCheatDisabler = Blatant.CreateOptionsButton({
    Name = "Godmode", -- name of object
    Function = function(callback) -- function that is called when toggled
        if callback then
            warningNotification("Vape", "Godmode loading...", 3)
        else
            print("disabled")
        end
    end,
    HoverText = "spam heal", -- text that will show up after hovering over the button (optional)
    Default = true, -- enabled on startup (optional)
    ExtraText = function() return "" end -- text that goes next to the button in Text GUI (optional)
})
local AntiCheatDisabler = Render.CreateOptionsButton({
    Name = "ChatTag", -- name of object
    Function = function(callback) -- function that is called when toggled
        if callback then
            warningNotification("Vape", "ChatTag", 3)
        else
            print("disabled")
        end
    end,
    HoverText = "idk", -- text that will show up after hovering over the button (optional)
    Default = true, -- enabled on startup (optional)
    ExtraText = function() return "fixed" end -- text that goes next to the button in Text GUI (optional)
})
shared.VapeManualLoad = true
