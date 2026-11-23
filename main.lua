repeat task.wait() until game:IsLoaded() and game:GetService("Players").LocalPlayer;

local loader = [[
task.spawn(function()
    local baseUrl = "https://raw.githubusercontent.com/northasis/Flatline/refs/heads/main/"
    local main = baseUrl .. "Games/" .. game.PlaceId .. ".lua"
    loadstring(game:HttpGet(main))()
end)
]]

if queue_on_teleport then
    queue_on_teleport(loader)
end

loadstring(loader)()
