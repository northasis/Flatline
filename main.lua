local Support = {
    [128039018996175] = "The Walking Dead Online"
}

local GameID = Support[game.PlaceId]
if not GameID then return end

local url = "https://raw.githubusercontent.com/northasis/grub/refs/heads/main/Games/" .. GameID .. ".lua"
local ok, content = pcall(game.HttpGet, game, url)
if not ok or not content or content == "" then return end
loadstring(content)()
