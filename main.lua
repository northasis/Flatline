local ok, content = pcall(game.HttpGet, game, "https://raw.githubusercontent.com/northasis/Flatline/refs/heads/main/supported.lua")
if not ok or not content or content == "" then return end

local Support = loadstring(content)()
local GameID = Support[game.PlaceId]
if not GameID then return end

local encoded = game:GetService("HttpService"):UrlEncode(GameID)
local gameUrl = "https://raw.githubusercontent.com/northasis/Flatline/refs/heads/main/Games/" .. encoded .. ".lua"

local game, main = pcall(game.HttpGet, game, gameUrl)
if not game or not main or main == "" then return end

loadstring(main)()
