hookfunction(
    require(game:GetService("ReplicatedStorage").Effect.Container.Death),
    function()
    end
)
hookfunction(
    require(game:GetService("ReplicatedStorage").Effect.Container.Respawn),
    function()
    end
)
hookfunction(
    require(game:GetService("ReplicatedStorage"):WaitForChild("GuideModule")).ChangeDisplayedNPC,
    function()
    end
)

function gay()
    local lighting = game:GetService("Lighting")
    local lightingLayers = lighting:FindFirstChild("LightingLayers")
    if lightingLayers then
        local darkFog = lightingLayers:FindFirstChild("DarkFog")
        if darkFog then
            darkFog:Destroy()
            print("DarkFog delete.")
        end
    end
    local Water = workspace._WorldOrigin["Foam;"]
    if Water then
    Water:Destroy()
    print("Remove Water Effect")
end        
end

gay()    
