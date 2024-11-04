function cleanlag()
    spawn(
        function()
            for _, v in pairs(workspace:GetDescendants()) do
                if
                    v.ClassName == "Part" or v.ClassName == "SpawnLocation" or v.ClassName == "WedgePart" or
                        v.ClassName == "Terrain"
                 then
                    v.Material = "Plastic"
                end
            end
            for _, v in pairs(game:GetDescendants()) do
                if v:IsA("Texture") then
                    v.Texture = ""
                elseif v:IsA("BasePart") then
                    v.Material = "Plastic"
                end
            end
            for _, v in pairs(Players.LocalPlayer.PlayerScripts:GetDescendants()) do
                local unwantedScripts = {
                    "RecordMode",
                    "Fireflies",
                    "Wind",
                    "WindShake",
                    "WindLines",
                    "WaterBlur",
                    "WaterEffect",
                    "wave",
                    "WaterColorCorrection",
                    "WaterCFrame",
                    "MirageFog",
                    "MobileButtonTransparency",
                    "WeatherStuff",
                    "AnimateEntrance",
                    "Particle",
                    "AccessoryInvisible"
                }
                if table.find(unwantedScripts, v.Name) then
                    v:Destroy()
                end
            end
        end
    )
end
cleanlag()

        hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Death), function() end)
        hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Respawn), function() end)
        hookfunction(require(game:GetService("ReplicatedStorage"):WaitForChild("GuideModule")).ChangeDisplayedNPC, function() end)
        
        
