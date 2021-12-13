ESX.RegisterServerCallback("gg:GetPlayerList",function(source,cb)
    local playerlist = {}
    for _,v in pairs(GetPlayers()) do
        table.insert(playerlist, {
            name = GetPlayerName(v),
            id = v
        })
    end
    cb(playerlist or {})
end)





local AllPlayers = {}
ESX.TriggerServerCallback("gg:GetPlayerList", function(cb) 
    AllPlayers = cb
end)
