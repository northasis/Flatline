task.spawn(function()
    local baseUrl = "https://raw.githubusercontent.com/northasis/Flatline/refs/heads/main/"
    local main = baseUrl .. "Games/" .. game.PlaceId .. ".lua"
    local support = loadstring(game:HttpGet(baseUrl .. "supported.lua"))()
    if not support or not support() then
        return
    end

    loadstring(game:HttpGet(main))()
end)
