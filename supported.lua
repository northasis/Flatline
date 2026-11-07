return function()
    local blacklist = { "Xeno", "Solara", "Volt" }

    local function reject(name)
        local player = game:GetService("Players").LocalPlayer

        if player then
            player:Kick("executor is not supported: " .. name)
        end

        return false
    end

    if not identifyexecutor then
        return reject("Unknown")
    end

    local identified, name = pcall(identifyexecutor)
    if not identified or not name or name == "" then
        return reject("Unknown")
    end

    local lcname = string.lower(name)
    for _, blocked in blacklist do
        if string.find(lcname, string.lower(blocked), 1, true) then
            return reject(name)
        end
    end

    return true
end
