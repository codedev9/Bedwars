local GuiLibrary = shared.GuiLibrary
local lplr = game.Players.LocalPlayer
local StoneExploit = {["Enabled"] = false}
    StoneExploit = GuiLibrary["ObjectsThatCanBeSaved"]["UtilityWindow"]["Api"].CreateOptionsButton({
        ["Name"] = "AntiCheatDisabler",
        ["Function"] = function(callback)
            if callback then
            task.spawn(function()
               repeat 
                task.wait()
                game:GetService('RunService').RenderStepped:Connect(function()

                    local args = {
                        [1] = {
                            ["direction"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector
                        }
                    }
                  
                           game:GetService("ReplicatedStorage").rbxts_include.node_modules["@rbxts"].net.out._NetManaged.ScytheDash:FireServer(unpack(args))
                  end)
             until (not StoneExploit["Enabled"])
            end)
        end
    })