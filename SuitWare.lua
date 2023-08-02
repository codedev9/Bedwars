--[[
    SUITWARE
    Made By suitxyz
]]
local hasTeleported = false
    local TweenService = game:GetService("TweenService")

    function findNearestBed()
        local nearestBed = nil
        local minDistance = math.huge

        for _,v in pairs(game.Workspace:GetDescendants()) do
            if v.Name:lower() == "bed" and v:FindFirstChild("Covers") and v:FindFirstChild("Covers").BrickColor ~= lplr.Team.TeamColor then
                local distance = (v.Position - lplr.Character.HumanoidRootPart.Position).magnitude
                if distance < minDistance then
                    nearestBed = v
                    minDistance = distance
                end
            end
        end
        return nearestBed
    end
    function tweenToNearestBed()
        local nearestBed = findNearestBed()
        if nearestBed and not hasTeleported then
            hasTeleported = true

            local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0)

            local tween = TweenService:Create(lplr.Character.HumanoidRootPart, TweenInfo.new(0.94), {CFrame = nearestBed.CFrame + Vector3.new(0, 2, 0)})
            tween:Play()
        end
    end
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
    HoverText = "Disables anticheat", -- text that will show up after hovering over the button (optional)
    Default = false, -- enabled on startup (optional)
    ExtraText = function() return " CFrame" end -- text that goes next to the button in Text GUI (optional)
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
runfunction()
local function telToPlr(plrT)
    local plr = plrT
        local lplr = game.Players.LocalPlayer
        task.wait()
        plr.Character.HumanoidRootPart.Position = Vector3.new(plr.X, plr.Y, plr.Z)
        return
    end
end
local AutoWin2V2 = Utility.CreateOptionsButton({
    Name = "AutoWin2V2", -- name of object
    Function = function(callback) -- function that is called when toggled
        if callback then
            wait(0.05)
            notify("AutoWin", "Teleporting To bed"), 8
            wait(0.03)
            lplr.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Dead)
            lplr.CharacterAdded:Connect(function()
                wait(0.3) 
                tweenToNearestBed()
                wait(4)
                notify("AutoWin", "Killing Players", 2)
            end)
        end
    end,
    HoverText = "only works with 2v2 (scythe must be used)", -- text that will show up after hovering over the button (optional)
    Default = false, -- enabled on startup (optional)
})
end
local HostExploit = Blatant.CreateOptionsButton({
    Name = "HostExploit", -- name of object
    Function = function(callback) -- function that is called when toggled
        if callback then
            notify("HostExploit", "Giving Host", 1)
            game.Players.LocalPlayer:SetAttribute("Cohost", true)
            notify("HostExploit", "Client-Sided btw", 2)
        end
    end,
    HoverText = "only works with 2v2 (scythe must be used)", -- text that will show up after hovering over the button (optional)
    Default = false, -- enabled on startup (optional)
})
