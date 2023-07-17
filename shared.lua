local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local BedwarsHub = {}
--// Functions //--
local function BedwarsHub.notifyPlayer(title, text, time)
    OrionLib:MakeNotification({
        Name = title,
        Content = text,
        Image = "rbxassetid://4483345998",
        Time = time
    })
end
local function BedwarsHub.CreateWindow(name, icon)
    if icon == nil then
        notifyPlayer("Bedwars Hub", "No Icon", 2)
        OrionLib
    end
end