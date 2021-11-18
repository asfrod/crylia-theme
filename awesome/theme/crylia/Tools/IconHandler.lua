------------------------------
-- This is the audio widget --
------------------------------

function GetIcon(theme, c)
    if theme and c then
        local clientName = string.lower(c.class) .. ".svg"
        local resolutions = {"128x128", "96x96", "64x64", "48x48", "42x42", "32x32", "24x24", "16x16"}
        local home = os.getenv("HOME")
        for i, res in ipairs(resolutions) do
            local iconDir = home .. "/.icons/" .. theme .. "/" .. res .."/apps/"
            local ioStream = io.open(iconDir .. clientName, "r")
            if ioStream ~= nil then
                return iconDir .. clientName
            else
                return c:get_icon(1)
            end
        end
    end
    return nil
end