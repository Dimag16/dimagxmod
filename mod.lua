MODS = {
    [397365145] = true; -- dimag 
    [269359071] = true; --
}

ADMIN = {
    [3100746109] = true; -- dimag
    [3171845222] = true; -- crown emoji buyer
    [1821130276] = true; -- crown emoji buyer
    [236937914] = true; -- crown buyer
    [562915894] = true; -- crown buyer <@733437144852332696>
    [2869703616] = true; -- crown buyer
    [2744421473] = true; --  
    [397365145] = true; --  
    [219133339] = true; --
    [103838106] = true; --
    [112086559] = true; --
    
}

--// Don't mess with anything below this
function initiateNames()
    game.Players.LocalPlayer.Character.UpperTorso:FindFirstChild('OriginalSize'):Destroy()
    for _,v in pairs(game:GetService('Players'):GetPlayers()) do
        if v.Character then
            if not v.Character.UpperTorso:FindFirstChild('OriginalSize') then
                v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😎] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
            end
            if MODS[v.UserId] then
                v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
            end
            if ADMIN[v.UserId] then
                v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑] ' .. v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName)
            end
        end
    end
end

local successful, errored = pcall(initiateNames)
return MODS
