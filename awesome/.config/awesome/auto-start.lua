local awful = require("awful")
--> Auto Start Application's
local autoStartAppList = {
    "picom --experimental-backends",
    "kmonad ~/.config/kmonad/config.kbd",
    "nm-applet",
    "nitrogen --restore",
}

for _, v in ipairs(autoStartAppList) do
    awful.spawn.with_shell(v)
end
