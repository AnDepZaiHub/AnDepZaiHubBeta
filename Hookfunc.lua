hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Death),function() end)
hookfunction(require(game:GetService("ReplicatedStorage"):WaitForChild("GuideModule")).ChangeDisplayedNPC,
function()end)

function gay()
    local lighting = game:GetService("Lighting")
    local lightingLayers = lighting:FindFirstChild("LightingLayers")
    if lightingLayers and game:GetService("Lighting") and game:GetService("Lighting") then
        local darkFog = lightingLayers:FindFirstChild("DarkFog")
        if darkFog then
            darkFog:Destroy()
            print("DarkFog delete.")
        end
    end
    local Water = workspace._WorldOrigin["Foam;"]
    if Water and workspace._WorldOrigin["Foam;"] then
    Water:Destroy()
    print("Remove Water Effect")
end        
end
gay()    
spawn(function()
    while task.wait() do
    setfpscap(60)
    end
end)
