local Support = loadstring("https://raw.githubusercontent.com/northasis/Flatline/refs/heads/main/supported.lua")()
local GameID = Support[game.PlaceId]
if not GameID then 
    return;
end

local gameUrl = "https://raw.githubusercontent.com/northasis/grub/refs/heads/main/Games/" .. GameID .. ".lua"
local okGame, gameContent = pcall(game.HttpGet, game, gameUrl)
if not okGame or not gameContent or gameContent == "" then 
    return;
end

loadstring(gameContent)()
