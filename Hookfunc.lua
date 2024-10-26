task.delay(15, function() 
    if hookfunction and not islclosure(hookfunction) then 
        workspace._WorldOrigin.ChildAdded:Connect(function(v)
            if v.Name == 'DamageCounter' then 
                v.Enabled = false 
            end
        end)

        hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Death), function() end)
        hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Respawn), function() end)
        hookfunction(require(game:GetService("ReplicatedStorage"):WaitForChild("GuideModule")).ChangeDisplayedNPC, function() end)
        
        
