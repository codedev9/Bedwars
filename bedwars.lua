--[[
    SUITWARE
    Made By suitxyz
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
local function notifyv2(text, delay)
	notify("SuitWare", text, delay)
end
--//
local Heatseeker = Utility.CreateOptionsButton({
    Name = "AntiCheatDisabler", -- name of object
    Function = function(callback) -- function that is called when toggled
        if callback then
            notifyv2("Disabled AntiCheat", 2)
            notifyv2("40 fly speed and speed 30 max", 2)
            return
            game:GetService('RunService').RenderStepped:Connect(function()

                local args = {
                    [1] = {
                        ["direction"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector
                    }
                }
              
                       game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.ScytheDash:FireServer(unpack(args))
              end)
        end
    end,
    HoverText = "allows Infnite fly", -- text that will show up after hovering over the button (optional)
    Default = true, -- enabled on startup (optional)
    ExtraText = function() return " nolagback" end -- text that goes next to the button in Text GUI (optional)
})
local RiseWaterMark = Utility.CreateOptionsButton({
    Name = "RiseWatermark", -- name of object
    Function = function(callback) -- function that is called when toggled
        if callback then
            notify("Rise", "Enjoy", 2)
            --// rise logo leaked
-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
local UIGradient = Instance.new("UIGradient")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 5435.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Size = UDim2.new(0, 185, 0, 106)
ImageLabel.Image = "rbxassetid://14155008442"
ImageLabel.ScaleType = Enum.ScaleType.Fit

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(14, 255, 227)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(1, 255, 81))}
UIGradient.Parent = ImageLabel
        end
    end,
    HoverText = "allows Infnite fly", -- text that will show up after hovering over the button (optional)
    Default = true, -- enabled on startup (optional)
    ExtraText = function() return " nolagback" end -- text that goes next to the button in Text GUI (optional)
})