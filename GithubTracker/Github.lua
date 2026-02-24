function Update()
    local raw = SELF:GetOption('RawData')
    if raw == "" or raw == nil then return "Loading..." end
    local days = {}
    local tooltips = {}
    local months = {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"}
    for cell in raw:gmatch('<td [^>]*ContributionCalendar%-day[^>]*>') do
        local id = cell:match('id="([^"]+)"')
        local date = cell:match('data%-date="([^"]+)"')
        local level = cell:match('data%-level="([^"]+)"')
        if id and date and level then table.insert(days, {id = id, date = date, level = level}) end
    end
    for id, text in raw:gmatch('<tool%-tip [^>]*for="([^"]+)"[^>]*>(.-)</tool%-tip>') do
        local count = text:match('^(%d+)') or "0"
        tooltips[id] = count
    end
    local totalFound = #days
    if totalFound == 0 then return "Error: No Data" end
    table.sort(days, function(a,b) return a.date < b.date end)
    local gridCount = 91
    local startOffset = totalFound - gridCount
    if startOffset < 0 then startOffset = 0 end
    local ringCounts = {0, 0, 0, 0, 0}
    for i = 1, gridCount do
        local entry = days[startOffset + i]
        if entry then
            local count = tooltips[entry.id] or "0"
            local y, m, d = entry.date:match("(%d%d%d%d)%-(%d%d)%-(%d%d)")
            -- CLEANER DATE: "Feb 5, 2026"
            local prettyDate = months[tonumber(m)] .. " " .. tonumber(d) .. ", " .. y
            local s = (tonumber(count) == 1) and "" or "s"
            SKIN:Bang('!SetVariable', 'L'..i, entry.level)
            SKIN:Bang('!SetVariable', 'T'..i, count .. " contribution" .. s .. " on " .. prettyDate)
            local idx = tonumber(entry.level) + 1
            ringCounts[idx] = ringCounts[idx] + 1
        end
    end
    local active = ringCounts[2] + ringCounts[3] + ringCounts[4] + ringCounts[5]
    if active > 0 then
        SKIN:Bang('!SetVariable', 'P1', ringCounts[2] / active)
        SKIN:Bang('!SetVariable', 'P2', ringCounts[3] / active)
        SKIN:Bang('!SetVariable', 'P3', ringCounts[4] / active)
        SKIN:Bang('!SetVariable', 'P4', ringCounts[5] / active)
    end
    SKIN:Bang('!UpdateMeter', '*')
    SKIN:Bang('!Redraw')
    return "Success"
end