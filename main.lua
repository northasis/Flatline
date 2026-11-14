task.spawn(function()
    local baseUrl = "https://raw.githubusercontent.com/northasis/Flatline/refs/heads/main/"
    local main = baseUrl .. "Games/" .. game.PlaceId .. ".lua"
    loadstring(game:HttpGet(main))()
end)
