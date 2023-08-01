--[[
    SuitWare
]]
shared.VapeIndependent = true
shared.CustomSaveVape = "vape"
local GuiLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
--//
local Combat = GuiLibrary.ObjectsThatCanBeSaved.CombatWindow.Api
local Blatant = GuiLibrary.ObjectsThatCanBeSaved.BlatantWindow.Api
local Render = GuiLibrary.ObjectsThatCanBeSaved.RenderWindow.Api
local Utility = GuiLibrary.ObjectsThatCanBeSaved.UtilityWindow.Api
local World = GuiLibrary.ObjectsThatCanBeSaved.WorldWindow.Api
--//
local function notify(title, text, delay)
	local suc, res = pcall(function()
		local frame = GuiLibrary["CreateNotification"](title, text, delay, "assets/WarningNotification.png")
		frame.Frame.Frame.ImageColor3 = Color3.fromRGB(236, 129, 44)
		return frame
	end)
	return (suc and res)
end

--//
notify("SuitWare", "someone is using suitware", 2)
print(game.Players.LocalPlayer.Name.. " is using suitware | userID: " ..game.Players.LocalPlayer.UserId)
local Heatseeker = Utility.CreateOptionsButton({
    Name = "FlyLagbackRemover", -- name of object
    Function = function(callback) -- function that is called when toggled
        if callback then
            notify("FlyLagbackRemover", "You can infinite fly", 2)
            return

        else
            print("disabled")
        end
    end,
    HoverText = "allows Infnite fly", -- text that will show up after hovering over the button (optional)
    Default = true, -- enabled on startup (optional)
    ExtraText = function() return " nolagback" end -- text that goes next to the button in Text GUI (optional)
})
wait(0.5)
notify("SuitWare", "HeatSeeker Loaded", 2)
local Dupe = {["Enabled"] = false}
Dupe = Utility.CreateOptionsButton({
    Name = "ChestDupe", -- name of object
    Function = function(callback) -- function that is called when toggled
        if callback then
            notify("ChestDupe", "Duping..", 2)
            local Repo = game.ReplicatedStorage
            local Inventories = Repo.Inventories
                  local v1 = Inventories:WaitForChild(game.Players.LocalPlayer.Name)
                  if v1.Name == game.Players.LocalPlayer then
                    notify("ChestDupe", v1.Name, 2)
                  end
                  if v1:FindFirstChild("stone_sword") then
                    local suc, fail = pcall(function()
                        v1:Clone().Parent = v1
                    end)
                    if suc then
                        notify("ChestDupe", "Duped!", 2)
                    else
                        notify("ChestDupe", fail, 2)
                    end
                else
                    notify("ChestDupe", "missing stone sword", 2)
                  end
                else
        end
    end,
    HoverText = "Not Tested", -- text that will show up after hovering over the button (optional)
    Default = true, -- enabled on startup (optional)
    ExtraText = function() return " iron" end -- text that goes next to the button in Text GUI (optional)
})
wait(0.5)
notify("SuitWare", "ChestDupe Loaded", 2)
wait(1)
notify("SuitWare", "Loading Combat", 2)
local SuitAura = {["Enabled"] = false}
SuitAura = Combat.CreateOptionsButton({
    Name = "SuitAura", -- name of object
    Function = function(callback) -- function that is called when toggled
        if callback then
            
        end
    end,
    HoverText = "yes its real", -- text that will show up after hovering over the button (optional)
    Default = true, -- enabled on startup (optional)
    ExtraText = function() return " iron" end -- text that goes next to the button in Text GUI (optional)
})
SuitAura = Combat.CreateOptionsButton({
    Name = "AutoClicker", -- name of object
    Function = function(callback) -- function that is called when toggled
        if callback then
            
        end
    end,
    HoverText = nil, -- text that will show up after hovering over the button (optional)
    Default = true, -- enabled on startup (optional)
    ExtraText = nil -- text that goes next to the button in Text GUI (optional)
})
SuitAura = Combat.CreateOptionsButton({
    Name = "StoneExploit", -- name of object
    Function = function(callback) -- function that is called when toggled
        if callback then
            
        end
    end,
    HoverText = "dupes i think", -- text that will show up after hovering over the button (optional)
    Default = true, -- enabled on startup (optional)
    ExtraText = function() return " stone_sword" end -- text that goes next to the button in Text GUI (optional)
})
SuitAura = Blatant.CreateOptionsButton({
    Name = "AntiStaff", -- name of object
    Function = function(callback) -- function that is called when toggled
        if callback then
            
        end
    end,
    HoverText = "leaves when staff is detected", -- text that will show up after hovering over the button (optional)
    Default = true, -- enabled on startup (optional)
    ExtraText = function() return " easy.gg" end -- text that goes next to the button in Text GUI (optional)
})
SuitAura = .CreateOptionsButton({
    Name = "SuitA", -- name of object
    Function = function(callback) -- function that is called when toggled
        if callback then
            
        end
    end,
    HoverText = "yes its real", -- text that will show up after hovering over the button (optional)
    Default = true, -- enabled on startup (optional)
    ExtraText = function() return " iron" end -- text that goes next to the button in Text GUI (optional)
})