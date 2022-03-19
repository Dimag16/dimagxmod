MODS = {
    [2327057026] = true; -- dimag 
    [62639400] = true; 
    [1145907268] = true; 
    [1241129792] = true; 
    [200706342] = true; --
    [3283433201] = true; -- 
    [2448098057] = true; --  
    [2902543989] = true; --  
    [3233982828] = true; --  
    [2514765680] = true; -- 
    [2061724124] = true; --  
    [2387424972] = true; -- 
    [955623293] = true; --  
    [955623293] = true; -- 
    [1521003766] = true; --  
    [3294760376] = true; -- 
    [3294760376] = true; --  
    [3248505437] = true; -- 
    [2527175897] = true; --  
    [2527175897] = true; -- 
    [2926655803] = true; --  
    [2392037878] = true; -- 
    [1989016662] = true; --  
    [482888301] = true; -- 
    [2061724124] = true; --  
    [3209221189] = true; --  
    [1333316431] = true; -- 
    [1989016662] = true; --  
    [482888301] = true; -- 
    [2061724124] = true; --  
    [2837473103] = true; --  
    [2670587465] = true; --  
    [3243916492] = true; --  
    [1864303975] = true; --  
    [488399731] = true; --   
    [2299070712] = true; --  
    [3277854247] = true; --  
    [334561111] = true; --  
    [3171461434] = true; --  
    [2702718660] = true; --  
    [2333051657] = true; --  
    [3150307367] = true; --  
    [753206585] = true; --  
    [2036438512] = true; --  
    [418350183] = true; --  
    [324778090] = true; --
    [2051998326] = true; --
    [2889684872] = true; -- zinnia
    [1250547633] = true; --
    [2700559991] = true; --
    [1821130276] = true; --
    [335051864] = true; --
    [2231854391] = true; --
    [298474871] = true; --
    [1080523494] = true; --
    [279910434] = true; --
    [2869703616] = true; -- 
    [2343586800] = true; -- dimags buyer
    [2037998345] = true; --
    [2684875736] = true; --
    [168769762] = true; --
    [818540264] = true; --
    [936210777] = true; --
    [336893697] = true; --
    [1967513244] = true; --
    [2268126629] = true; --
    [2661994605] = true; --
    [3073492738] = true; --
    [3094886256] = true; --
    [71941577] = true; --
    [1893641861] = true; --
    [2798431306] = true; --
    [2250658895] = true; --
    [2360560929] = true; --
    [480113448] = true; --
    [2499251010] = true; --
    [2360560929] = true; --
    [1823903655] = true; --
    [2041622060] = true; --
    [3140798308] = true; --  
    [2816312889] = true; --  
    [1458154337] = true; --  
    [1835546102] = true; --  
    [1469478071] = true; --  
    [3171845222] = true; --  
    [2744421473] = true; --  
    [64534052] = true; -- 
    [279738622] = true; --  
    [272853356] = true; --  
    [313828596] = true; --  
    [559267462] = true; --  
    [272853356] = true; --  
    [40078939] = true; --  
    [2670663093] = true; --
    [2825128788] = true; --  
    [234085264] = true; --  
    [2994944090] = true; -- 
    [336893697] = true; -- 
    [349768726] = true; --
    [2797704984] = true; -- 
    [199837699] = true; -- 
    [2219768153] = true; -- 
    [2227764036] = true; -- 
    [2327118926] = true; -- 
    [3203620001] = true; -- 
    [1614028912] = true; -- 
    [2345786798] = true; -- 
    [1150780244] = true; -- 
    [3295695684] = true; --
    [3100746109] = true; --
}

ADMIN = {
    [3100746109] = true; -- dimag
    [3171845222] = true; -- crown emoji buyer
    [1821130276] = true; -- crown emoji buyer
    [236937914] = true; -- crown buyer
    [562915894] = true; -- crown buyer <@733437144852332696>
    [2869703616] = true; -- crown buyer
    [2744421473] = true; --  
    
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
