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

local Net = game:GetService("ReplicatedStorage").Modules.Net
local RegisterAttack = Net:WaitForChild("RE/RegisterAttack")
local RegisterHit = Net:WaitForChild("RE/RegisterHit")

local Characters = workspace.Characters
local Enemies = workspace.Enemies
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

local module = {
    NextAttack = 0,
    Distance = 60,
    attackMobs = true,
    attackPlayers = true
}
function GetBladeHits()
    local BladeHits = {}
    local Client = Player
    local Enemies = workspace.Enemies:GetChildren()
    for _, enemy in pairs(Enemies) do
        local Humanoid = enemy:FindFirstChildOfClass("Humanoid")
        local HumanoidRootPart = enemy:FindFirstChild("HumanoidRootPart")
        if Humanoid and HumanoidRootPart and Humanoid.Health > 0 then
            local Distance = (Client.Character.HumanoidRootPart.Position - HumanoidRootPart.Position).Magnitude
            if Distance < module.Distance then
                table.insert(BladeHits, HumanoidRootPart)
            end
        end
    end
    return BladeHits
end
local weapondata = require(game:GetService("ReplicatedStorage").Modules.WeaponData)
weapondata.electricclaw.HitboxMagnitude = 200
function module:attack()
    local hits = GetBladeHits()
    if #hits > 0 then
        RegisterAttack:FireServer(0)
        local targets = {}
        for i = 1, math.min(8, #hits) do
            local hit = hits[i]
            table.insert(targets, {hit.Parent, hit}) 
        end
        if #targets > 0 then
            RegisterHit:FireServer(targets[1][2], targets) 
        end
    end
end
spawn(function()
    while task.wait() do
        pcall(function()
            module:attack()
        end)
    end
end)
