task.spawn(function()
    if not game.HttpGet or not loadstring then
        return;
    end

    local url = "https://raw.githubusercontent.com/northasis/Flatline/refs/heads/main/Games/" .. game.PlaceId .. ".lua"
    local run = loadstring(game:HttpGet(url))
    if run then
        run()
    end
end)
