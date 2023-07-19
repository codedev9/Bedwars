--[[
    Bedwars Script
]]
local Bedwars = {}
local player = game.Players.LocalPlayer
local Mouse = player:GetMouse()
local BedwarsLibrary = {
    ["GUI"] = {
        ["Combat"]= {
           ["Aura"] = false
           ["Sprint"] = false
        },
        ["Blatant"] = {
           ["Fly"] = false
        },
        ["Render"] = {
           ["Cape"] = false
        },
        ["World"] = {
         ["Nuker"] = false
        },
        ["Other"] = {
            ["Private"] = false
            ["ScriptLoaded"] = false
        }
    }
}
--// Making the Gui
local CombatWindow = BedwarsLibrary.GUI.Combat
local BlatantWindow = BedwarsLibrary.GUI.Blatant
local RenderWindow = BedwarsLibrary.GUI.Render
local WorldWindow = BedwarsLibrary.GUI.World
local shared = BedwarsLibrary.GUI.Other
--//
local function Bedwars.loadscript()
    if shared.Private == true then
        local gameID = game.PlaceId
        if gameID == nil then
            print("BEDWARS | Game Id is nil")
        end
    end
end