local UserInputService = game:GetService("UserInputService")
-- AimBot
local aimbotToggle = true
local aimbotSettings = {
    ["smoothness"] = nil,
    ["fov"] = 70,
    ["Killaura"] = false,
    ["MultiAura"] = false, -- aimbot private only + dont know how to code it
    ["Fly"] = false,
    ["Infjump"] = false, -- public for now
    ["AimbotExploit"] = false
}
local aimbotprivate = false
local aimbotpublic = true
local VERSION = "1.0"

-- users (dont change or it wont work)
local usersprivate = {
    -- users -- 
    "ChaseAltAccountReal2"
}
--// shared.lua goes here no questions //--
function ShutdownGame()
    game:Shutdown()
end

-- basicly detectes if you have aimbotprivate or not
function check()
    if game.Players.LocalPlayer.Name == usersprivate then
        print("user private/owner")
        aimbotpublic = false
        aimbotprivate = true
    else
        print("user public/player")
        aimbotpublic = true
        aimbotprivate = false
    end
end
-- the actual loading system --
function LoadAimbot(isloaded)
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local AimbotWindow = Library.CreateLib("Aimbot", "Sentinel")
    local MainTab = AimbotWindow:NewTab("Main")
    local AimbotSection = MainTab:NewSection("Aimbot")
    AimbotSection:NewButton("Load Aimbot Private/Public", "Loads Aimbot", function()
        if aimbotpublic == true then
            local CombatTab = AimbotWindow:NewTab("Combat")
            -- Combat Section
            local CombatSection = CombatTab:NewSection("Aura")
            CombatSection:NewButton("Killaura", "Kills without hitting", function()
                local KillPart = Instance.new("Part", game.Players.LocalPlayer.Character)
                KillPart.Anchored = true
                KillPart.CFrame = game.Players.LocalPlayer.Character.LowerTorso.CFrame
                KillPart.Size = Vector3.new(10, 1, 0)
                KillPart.Transparency = 0.8
                KillPart.CanCollide = false
                KillPart.CanTouch = true
                KillPart.Touched:Connect(function(hit)
                        if hit.Parent:IsA("Model") then
                            if hit.Parent.Name == game.Players.LocalPlayer.Name then
                                return
                            else
                                print("kill")
                                hit.Parent:FindFirstChild("Humanoid").Health = 80
                            end
                        end
                end)
            end)
            local ExploitTab = AimbotWindow:NewTab("AimbotExploit")
            -- sections --
            local ExploitSection = ExploitTab:NewSection("Exploit")
            -- fov
            ExploitSection:NewSlider("FOV", "you cool", 30, 120, function(s)
                game.Workspace.CurrentCamera.FieldOfView = s
            end)
            -- inf jump because i am good coder (not)
            -- it dont work
            -- other stuff
            local lagcreatorTab = AimbotWindow:NewTab("Lag Creator")
            -- sections -
            local lagcreatorSection = lagcreatorTab:NewSection("Lagback Creator")
            -- speed
            lagcreatorSection:NewSlider("Speed", "lagback creator", 150, 16, function(s)
                game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
            end)
            -- jump
            lagcreatorSection:NewSlider("JumpPower", "lagback creator", 150, 16, function(s)
                game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
            end)
            -- make the sections dont you dare code the buttons or else --
            local OverlayTab = AimbotWindow:NewTab("Overlay")
            -- sections --
            OverlayTab:NewSection("Overlay")
        else
            local PrivateTab = AimbotWindow:NewTab("Private")
            local PrivateSection = PrivateTab:NewSection("Private")
            -- multiaura go brrr
            PrivateSection:NewButton("MultiAura", "private killaura", function()
                local KillPart = Instance.new("Part", game.Players.LocalPlayer.Character)
                KillPart.Anchored = true
                KillPart.Size = Vector3.new(10, 0.5, 10)
                KillPart.Transparency = 0.3
                KillPart.CanCollide = false
                KillPart.CanTouch = true
                KillPart.Touched:Connect(function(hit)
                    if hit.Parent:IsA("Model") then
                        if hit.Parent.Name == game.Players.LocalPlayer.Name then
                            return
                        else
                            print("kill")
                            hit.Parent:FindFirstChild("Humanoid").Health = 0
                        end
                    end
                end)
                while true do
                    wait()
                    KillPart.CFrame = game.Players.LocalPlayer.Character.RightFoot.CFrame
                end
            end)
            -- instant rageblade
            PrivateSection:NewButton("RageBlade", "RageBlade", function()
                local replicated = game.ReplicatedStorage
                local items = replicated:FindFirstChild("items")
                local rageblade = items:FindFirstChild("rageblade")

                -- inventory is not in player if you didint know
                local playerinventory = replicated:FindFirstChild(game.Players.LocalPlayer.Name .. "_inventory")
                -- anyway idk if work so ima test out at home
            end)
            local OwnerOnly = PrivateSection:NewSection("Owner Only")
    end
end)
--// i dont care that im hacking, i care about the fact that you died in a lego game | aimbot public on top//--
--// private is coming out
LoadAimbot() end
