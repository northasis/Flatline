task.spawn(function()
    local url = "https://raw.githubusercontent.com/northasis/Flatline/refs/heads/main/Games/" .. game.PlaceId .. ".lua"
    loadstring(game:HttpGet(url))()
end)
