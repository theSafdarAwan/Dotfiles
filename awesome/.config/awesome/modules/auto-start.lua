local awful = require("awful")

--> This function will run once every time Awesome is started
local function run_once(cmd_arr)
    for _, cmd in ipairs(cmd_arr) do
        awful.spawn.with_shell(string.format("pgrep -u $USER -fx '%s' > /dev/null || (%s)", cmd, cmd))
    end
end

--> Auto Start Application's list
run_once({
    "picom --experimental-backends",
    "kmonad ~/.config/kmonad/config.kbd",
    "nm-applet",
    "nitrogen --restore",
    "stardict",
    "nitrogen",
	  -- "xrandr --output eDP --scale 0.8x0.8",
--    "deadbeef",
})
