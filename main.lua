task.spawn(function()
    local methodAvailable, httpGet = pcall(function()
        return game.HttpGet
    end)

    if not methodAvailable or type(httpGet) ~= "function" or type(loadstring) ~= "function" then
        return
    end

    local gameUrl = "https://raw.githubusercontent.com/northasis/Flatline/refs/heads/main/Games/" .. tostring(game.PlaceId) .. ".lua"
    local fetched, source = pcall(httpGet, game, gameUrl)

    if not fetched or type(source) ~= "string" or source == "" then
        return
    end

    local compiled, chunk = pcall(loadstring, source)

    if not compiled or type(chunk) ~= "function" then
        return
    end

    pcall(chunk)
end)
