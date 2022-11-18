--> redefine global Variable's as local to avoid warning's
local root = root
local globalkeys = globalkeys
local awesome = awesome
local client = client
local screen = screen

--> Install package's through luarocks if installed
pcall(require, "luarocks.loader")

--> awesome libraries
local gears = require("gears")
local awful = require("awful")
require("awful.autofocus")

--> Widget and layout library
local wibox = require("wibox")

--> Theme handling library
local beautiful = require("beautiful")

--> Notification library
local naughty = require("naughty")
local menubar = require("menubar")
local hotkeys_popup = require("awful.hotkeys_popup")
--> Enable hotkeys help widget for VIM and other apps
-- when client with a matching name is opened:
require("awful.hotkeys_popup.keys")

--> Error handling
-- Check if awesome encountered an error during startup and fell back to
-- another config (This code will only ever execute for the fallback config)
if awesome.startup_errors then
    naughty.notify({
        preset = naughty.config.presets.critical,
        title = "Oops, there were errors during startup!",
        text = awesome.startup_errors,
    })
end

-- Handle runtime errors after startup
do
    local in_error = false
    awesome.connect_signal("debug::error", function(err)
        -- Make sure we don't go into an endless error loop
        if in_error then
            return
        end
        in_error = true

        naughty.notify({
            preset = naughty.config.presets.critical,
            title = "Oops, an error happened!",
            text = tostring(err),
        })
        in_error = false
    end)
end

--> Variable definitions
--> Themes define colours, icons, font and wallpapers.
beautiful.init(os.getenv("HOME") .. "/.config/awesome/dracula/theme.lua")
-- beautiful.init(gears.filesystem.get_themes_dir() .. "default/theme.lua")

-- This is used later as the default terminal and editor to run.
local terminal = "wezterm"
local editor = os.getenv("EDITOR") or "vim"
local editor_cmd = terminal .. " start " .. editor

--> Apps Define
local rofi = "rofi -show drun"
local dmenu = "dmenu_run"
local rofi_emoji = "rofi -show emoji"

--> modkey but for me altkey.
local altkey = "Mod1"

--> Table of layouts to cover with awful.layout.inc, order matters.
awful.layout.layouts = {
    -- awful.layout.suit.floating,
    -- awful.layout.suit.tile,
    -- awful.layout.suit.tile.left,
    -- awful.layout.suit.tile.bottom,
    awful.layout.suit.tile.top,
    -- awful.layout.suit.fair,
    -- awful.layout.suit.fair.horizontal,
    -- awful.layout.suit.spiral,
    -- awful.layout.suit.spiral.dwindle,
    awful.layout.suit.max,
    -- awful.layout.suit.max.fullscreen,
    awful.layout.suit.magnifier,
    -- awful.layout.suit.corner.nw,
    -- awful.layout.suit.corner.ne,
    -- awful.layout.suit.corner.sw,
    -- awful.layout.suit.corner.se,
}

--> Menu
-- Create a launcher widget and a main menu
local myawesomemenu = {
    {
        "hotkeys",
        function()
            hotkeys_popup.show_help(nil, awful.screen.focused())
        end,
    },
    { "manual", terminal .. " start " .. "man awesome" },
    { "edit config", editor_cmd .. " " .. awesome.conffile },
    { "restart", awesome.restart },
    {
        "quit",
        function()
            awesome.quit()
        end,
    },
}

local mymainmenu = awful.menu({
    items = {
        { "awesome", myawesomemenu, beautiful.awesome_icon },
        { "open terminal", terminal },
    },
})

-- local mylauncher = awful.widget.launcher({ image = beautiful.awesome_icon, menu = mymainmenu })

-- Menubar configuration
menubar.utils.terminal = terminal -- Set the terminal for applications that require it

-- Keyboard map indicator and switcher
local mykeyboardlayout = awful.widget.keyboardlayout()

-- Wibar
-- Create a textclock widget
local mytextclock = wibox.widget.textclock()

-- Create a wibox for each screen and add it
local taglist_buttons = gears.table.join(
    awful.button({}, 1, function(t)
        t:view_only()
    end),
    awful.button({ altkey }, 1, function(t)
        if client.focus then
            client.focus:move_to_tag(t)
        end
    end),
    awful.button({}, 3, awful.tag.viewtoggle),
    awful.button({ altkey }, 3, function(t)
        if client.focus then
            client.focus:toggle_tag(t)
        end
    end),
    awful.button({}, 4, function(t)
        awful.tag.viewnext(t.screen)
    end),
    awful.button({}, 5, function(t)
        awful.tag.viewprev(t.screen)
    end)
)

local tasklist_buttons = gears.table.join(
    awful.button({}, 1, function(c)
        if c == client.focus then
            c.minimized = true
        else
            c:emit_signal("request::activate", "tasklist", { raise = true })
        end
    end),
    awful.button({}, 3, function()
        awful.menu.client_list({ theme = { width = 350 } })
    end),
    awful.button({}, 4, function()
        awful.client.focus.byidx(1)
    end),
    awful.button({}, 5, function()
        awful.client.focus.byidx(-1)
    end)
)

local function set_wallpaper(s)
    -- Wallpaper
    if beautiful.wallpaper then
        local wallpaper = ""
        -- If wallpaper is a function, call it with the screen
        if type(wallpaper) == "function" then
            wallpaper = wallpaper(s)
        end
        gears.wallpaper.maximized(wallpaper, s, true)
    end
end

-- Re-set wallpaper when a screen's geometry changes (e.g. different resolution)
screen.connect_signal("property::geometry", set_wallpaper)

local taglist_names =
{ "  ", " ", " ", " ", " ", " ", " ", " ", " " }

awful.screen.connect_for_each_screen(function(s)
    -- Wallpaper
    -- set_wallpaper(s)

    -- Tag's Name's
    -- local names = { "1", "2", "3", "4", "5", "6", "7", "8", "9" }
    -- local names = {  "  ", "  ", "  ", "  ", "  ", "  ", "  ", "  ", " ", "  "  }

    local names = taglist_names
    -- awful.tag({ "1", "2", "3", "4", "5", "6", "7", "8", "9" }, s, awful.layout.layouts[1])
    local l = awful.layout.suit
    local layouts = {
        l.max,
        l.tile.top,
        l.max,
        l.max,
        l.max,
        l.max,
        l.spiral,
        l.max.fullscreen,
        l.max,
    }
    awful.tag(names, s, layouts)

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contain an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(gears.table.join(
        awful.button({}, 1, function()
            awful.layout.inc(1)
        end),
        awful.button({}, 3, function()
            awful.layout.inc(-1)
        end),
        awful.button({}, 4, function()
            awful.layout.inc(1)
        end),
        awful.button({}, 5, function()
            awful.layout.inc(-1)
        end)
    ))
    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist({
        screen = s,
        filter = awful.widget.taglist.filter.all,
        buttons = taglist_buttons,
    })

    -- Create a tasklist widget
    -- Create the wibox
    s.mytasklist = awful.widget.tasklist({
        screen = s,
        filter = awful.widget.tasklist.filter.currenttags,
        buttons = tasklist_buttons,
        styles = {
            align = "center",
        },
        layout = {

            spacing = 5,

            -- max_widget_size = awful.screen.focused().workarea.width * 0.12,
            max_widget_size = 30,

            layout = wibox.layout.flex.horizontal,
        },
    })

    s.mywibox = awful.wibar({ position = "top", screen = s })

    -- Add widgets to the wibox
    s.mywibox:setup({
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            -- mylauncher,
            s.mytaglist,
            s.mypromptbox,
        },
        s.mytasklist, -- Middle widget
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            mykeyboardlayout,
            wibox.widget.systray(),
            mytextclock,
            s.mylayoutbox,
        },
    })
end)

--> Mouse bindings
-- root.buttons(gears.table.join(
-- 	awful.button({}, 3, function()
-- 		mymainmenu:toggle()
-- 	end),
-- 	awful.button({}, 4, awful.tag.viewnext),
-- 	awful.button({}, 5, awful.tag.viewprev)
-- ))

--> Key bindings
globalkeys = gears.table.join(
    awful.key(
        { altkey },
        "s",
        hotkeys_popup.show_help,
        { description = "show help", group = "awesome" }
    ),
    awful.key(
        { altkey, "Control" },
        "h",
        awful.tag.viewprev,
        { description = "view previous", group = "tag" }
    ),
    awful.key(
        { altkey, "Control" },
        "l",
        awful.tag.viewnext,
        { description = "view next", group = "tag" }
    ),
    awful.key(
        { altkey },
        ",",
        awful.tag.history.restore,
        { description = "go back", group = "tag" }
    ),

    awful.key({ altkey }, "j", function()
        awful.client.focus.byidx(1)
    end, { description = "focus next by index", group = "client" }),
    awful.key({ altkey }, "k", function()
        awful.client.focus.byidx(-1)
    end, { description = "focus previous by index", group = "client" }),
    awful.key({ altkey }, "w", function()
        mymainmenu:show()
    end, { description = "show main menu", group = "awesome" }),

    --> Layout manipulation
    awful.key({ altkey, "Shift" }, "j", function()
        awful.client.swap.byidx(1)
    end, { description = "swap with next client by index", group = "client" }),
    awful.key(
        { altkey, "Shift" },
        "k",
        function()
            awful.client.swap.byidx(-1)
        end,
        { description = "swap with previous client by index", group = "client" }
    ),
    --[[awful.key({ modkey, "Ctrol" }, "j", function()
        awful.screen.focus_relative(1)
    end, { description = "focus the next screen", group = "screen" }),
    awful.key({ modkey, "Control" }, "k", function()
        awful.screen.focus_relative(-1)
    end, { description = "focus the previous screen", group = "screen" }), --]]
    awful.key(
        { altkey },
        "u",
        awful.client.urgent.jumpto,
        { description = "jump to urgent client", group = "client" }
    ),
    awful.key({ altkey }, "Tab", function()
        awful.client.focus.history.previous()
        if client.focus then
            client.focus:raise()
        end
    end, { description = "go back", group = "client" }),

    -- Standard program
    awful.key({ altkey }, "Return", function()
        awful.spawn(terminal)
    end, { description = "open a terminal", group = "launcher" }),
    awful.key({ altkey }, "r", function()
        awful.spawn(rofi)
    end, { description = "Luach Rofi", group = "launcher" }),
    awful.key({ altkey }, ".", function()
        awful.spawn(rofi_emoji)
    end, { description = "Luach Rofi Emoji Picker", group = "launcher" }),
    awful.key(
        { altkey, "Control" },
        "r",
        awesome.restart,
        { description = "reload awesome", group = "awesome" }
    ),
    awful.key(
        { altkey, "Control", "Shift" },
        "x",
        awesome.quit,
        { description = "quit awesome", group = "awesome" }
    ),

    awful.key({ altkey, "Control" }, "a", function()
        awful.spawn(terminal .. " start " .. "alsamixer")
    end, { description = "Alsa audio controller", group = "launcher" }),

    awful.key({ altkey }, "l", function()
        awful.tag.incmwfact(0.01)
    end, { description = "increase master width factor", group = "layout" }),
    awful.key({ altkey }, "h", function()
        awful.tag.incmwfact(-0.01)
    end, { description = "decrease master width factor", group = "layout" }),
    awful.key(
        { altkey, "Shift" },
        "h",
        function()
            awful.tag.incnmaster(1, nil, true)
        end,
        {
            description = "increase the number of master clients",
            group = "layout",
        }
    ),
    awful.key(
        { altkey, "Shift" },
        "l",
        function()
            awful.tag.incnmaster(-1, nil, true)
        end,
        {
            description = "decrease the number of master clients",
            group = "layout",
        }
    ),
    awful.key({ altkey, "Control" }, "h", function()
        awful.tag.incncol(1, nil, true)
    end, { description = "increase the number of columns", group = "layout" }),
    --[[awful.key({ modkey, "Control" }, "l", function()
        awful.tag.incncol(-1, nil, true)
    end, { description = "decrease the number of columns", group = "layout" }), --]]
    awful.key({ altkey }, "space", function()
        awful.layout.inc(1)
    end, { description = "select next", group = "layout" }),
    awful.key({ altkey, "Shift" }, "space", function()
        awful.layout.inc(-1)
    end, { description = "select previous", group = "layout" }),

    awful.key({ altkey, "Control" }, "n", function()
        local c = awful.client.restore()
        -- Focus restored client
        if c then
            c:emit_signal(
                "request::activate",
                "key.unminimize",
                { raise = true }
            )
        end
    end, { description = "restore minimized", group = "client" }),

    -- Prompt
    -- awful.key({ altkey }, "r", function()
    -- 	awful.screen.focused().mypromptbox:run()
    -- end, { description = "run prompt", group = "launcher" }),
    awful.key({ altkey }, "d", function()
        awful.spawn(dmenu)
    end, { description = "Run dmenu", group = "launcher" }),

    -- Menubar
    awful.key({ altkey }, "p", function()
        menubar.show()
    end, { description = "show the menubar", group = "launcher" })
)

local clientkeys = gears.table.join(
    awful.key({ altkey }, "f", function(c)
        c.fullscreen = not c.fullscreen
        c:raise()
    end, { description = "toggle fullscreen", group = "client" }),
    awful.key({ altkey }, "q", function(c)
        c:kill()
    end, { description = "close", group = "client" }),
    awful.key(
        { altkey, "Control" },
        "space",
        awful.client.floating.toggle,
        { description = "toggle floating", group = "client" }
    ),
    awful.key({ altkey, "Control" }, "Return", function(c)
        c:swap(awful.client.getmaster())
    end, { description = "move to master", group = "client" }),
    awful.key({ altkey }, "o", function(c)
        c:move_to_screen()
    end, { description = "move to screen", group = "client" }),
    awful.key({ altkey }, "t", function(c)
        c.ontop = not c.ontop
    end, { description = "toggle keep on top", group = "client" }),
    awful.key({ altkey }, "n", function(c)
        -- The client currently has the input focus, so it cannot be
        -- minimized, since minimized clients can't have the focus.
        c.minimized = true
    end, { description = "minimize", group = "client" }),
    awful.key({ altkey }, "m", function(c)
        c.maximized = not c.maximized
        c:raise()
    end, { description = "(un)maximize", group = "client" }),
    awful.key({ altkey, "Control" }, "m", function(c)
        c.maximized_vertical = not c.maximized_vertical
        c:raise()
    end, { description = "(un)maximize vertically", group = "client" }),
    awful.key({ altkey, "Shift" }, "m", function(c)
        c.maximized_horizontal = not c.maximized_horizontal
        c:raise()
    end, { description = "(un)maximize horizontally", group = "client" })
)

-- Bind all key numbers to tags.
-- Be careful: we use keycodes to make it work on any keyboard layout.
-- This should map on the top row of your keyboard, usually 1 to 9.
for i = 1, 9 do
    globalkeys = gears.table.join(
        globalkeys,
        -- View tag only.
        awful.key({ altkey }, "#" .. i + 9, function()
            local screen = awful.screen.focused()
            local tag = screen.tags[i]
            if tag then
                tag:view_only()
            end
        end, { description = "view tag #" .. i, group = "tag" }),
        -- Toggle tag display.
        awful.key({ altkey, "Control" }, "#" .. i + 9, function()
            local screen = awful.screen.focused()
            local tag = screen.tags[i]
            if tag then
                awful.tag.viewtoggle(tag)
            end
        end, { description = "toggle tag #" .. i, group = "tag" }),
        -- Move client to tag.
        awful.key(
            { altkey, "Shift" },
            "#" .. i + 9,
            function()
                if client.focus then
                    local tag = client.focus.screen.tags[i]
                    if tag then
                        client.focus:move_to_tag(tag)
                    end
                end
            end,
            { description = "move focused client to tag #" .. i, group = "tag" }
        ),
        -- Toggle tag on focused client.
        awful.key(
            { altkey, "Control", "Shift" },
            "#" .. i + 9,
            function()
                if client.focus then
                    local tag = client.focus.screen.tags[i]
                    if tag then
                        client.focus:toggle_tag(tag)
                    end
                end
            end,
            { description = "toggle focused client on tag #" .. i, group = "tag" }
        )
    )
end

local clientbuttons = gears.table.join(
    awful.button({}, 1, function(c)
        c:emit_signal("request::activate", "mouse_click", { raise = true })
    end),
    awful.button({ altkey }, 1, function(c)
        c:emit_signal("request::activate", "mouse_click", { raise = true })
        awful.mouse.client.move(c)
    end),
    awful.button({ altkey }, 3, function(c)
        c:emit_signal("request::activate", "mouse_click", { raise = true })
        awful.mouse.client.resize(c)
    end)
)

-- Set keys
root.keys(globalkeys)

--> Rules
-- Rules to apply to new clients (through the "manage" signal).
function custom_focus_filter(c)
    if global_focus_disable then
        return nil
    end
    return awful.client.focus.filter(c)
end

awful.rules.rules = {
    -- All clients will match this rule.
    {
        rule = {},
        properties = {
            border_width = beautiful.border_width,
            border_color = beautiful.border_normal,
            focus = awful.client.focus.filter,
            raise = true,
            keys = clientkeys,
            buttons = clientbuttons,
            screen = awful.screen.preferred,
            placement = awful.placement.no_overlap
                + awful.placement.no_offscreen,
        },
    },
    { rule = { instance = "scratch" }, properties = { floating = true } },

    -- Floating clients.
    {
        rule_any = {
            instance = {
                "DTA", -- Firefox addon DownThemAll.
                "copyq", -- Includes session name in class.
                "pinentry",
            },
            class = {
                "Arandr",
                "Blueman-manager",
                "Gpick",
                "thunderbird*",
                "ksnip",
                -- "tabbed",
                "Kruler",
                "Anki",
                "MessageWin", -- kalarm.
                "Sxiv",
                "Tor Browser", -- Needs a fixed window size to avoid fingerprinting by screen size.
                "Wpa_gui",
                "veromix",
                "xtightvncviewer",
            },

            -- Note that the name property shown in xprop might be set slightly after creation of the client
            -- and the name shown there might not match defined rules here.
            name = {
                "Event Tester", -- xev.
            },
            role = {
                "AlarmWindow", -- Thunderbird's calendar.
                "ConfigManager", -- Thunderbird's about:config.
                "pop-up", -- e.g. Google Chrome's (detached) Developer Tools.
            },
        },
        properties = { floating = true },
    },

    -- Add titlebars to normal clients and dialogs
    {
        rule_any = { type = { "normal", "dialog" } },
        properties = {
            titlebars_enabled = false,
            floating = true, --[[ remove this floating property when you get a new monitor ]]
        },
    },
    --> Tag 1
    {
        rule_any = {
            class = {
                "firefox",
                "firefox-nightly",
                "Google-chrome",
                "Google-chrome-unstable",
                "qBittorrent",
            },
        },
        properties = { tag = taglist_names[1] },
    },
    --> Tag 2
    -- {
    -- 	rule = {
    -- 		class = "org.wezfurlong.wezterm",
    -- 	},
    -- 	properties = { screen = 1, tag = taglist_names[2] },
    -- },
    --> Tag 3
    {
        rule_any = {
            class = {
                "mpv",
                "Evince",
                "tabbed",
                "Com.github.johnfactotum.Foliate",
                "Deadbeef",
                "Peazip",
            },
        },
        properties = { tag = taglist_names[3] },
    },
    --> Tag 4
    {
        rule_any = {
            class = { "TIPP10", "Todoist", "Stardict", "obsidian", "Anki" },
        },
        properties = { screen = 1, tag = taglist_names[4] },
    },
    --> Tag 5
    {
        rule_any = {
            class = { "Nitrogen", "stacer", "BleachBit" },
        },
        properties = { screen = 1, tag = taglist_names[5] },
    },
    --> Tag 7
    {
        rule_any = {
            class = { "thunderbird", "discord", "org.gabmus.giara" },
        },
        properties = { screen = 1, tag = taglist_names[7] },
    },
    --> Tag 8
    {
        rule_any = {
            class = {
                "^obs$",
                "Gcolor2",
                "Blender",
                "figma-linux",
                "VirtualBox",
                "kdenlive",
                "Ardour",
                "Inkscape",
                "Gimp",
            },
        },
        properties = { screen = 1, tag = taglist_names[8] },
    },
    --> Tag 9
    {
        rule = {
            class = "Pcmanfm",
        },
        properties = { screen = 1, tag = taglist_names[9] },
    },
}

--> Signals
-- Signal function to execute when a new client appears.
client.connect_signal("manage", function(c)
    -- Set the windows at the slave,
    -- i.e. put it at the end of others instead of setting it master.
    -- if not awesome.startup then awful.client.setslave(c) end

    if awesome.startup
        and not c.size_hints.user_position
        and not c.size_hints.program_position
    then
        -- Prevent clients from being unreachable after screen count changes.
        awful.placement.no_offscreen(c)
    end
end)

client.connect_signal("request::titlebars", function(c)
    -- buttons for the titlebar
    local buttons = gears.table.join(
        awful.button({}, 1, function()
            c:emit_signal("request::activate", "titlebar", { raise = true })
            awful.mouse.client.move(c)
        end),
        awful.button({}, 3, function()
            c:emit_signal("request::activate", "titlebar", { raise = true })
            awful.mouse.client.resize(c)
        end)
    )

    awful.titlebar(c):setup({
        { -- Left
            awful.titlebar.widget.iconwidget(c),
            buttons = buttons,
            layout = wibox.layout.fixed.horizontal,
        },
        { -- Middle
            { -- Title
                align = "left",
                widget = awful.titlebar.widget.titlewidget(c),
            },
            buttons = buttons,
            layout = wibox.layout.flex.horizontal,
        },
        { -- Right
            awful.titlebar.widget.floatingbutton(c),
            awful.titlebar.widget.maximizedbutton(c),
            awful.titlebar.widget.stickybutton(c),
            awful.titlebar.widget.ontopbutton(c),
            awful.titlebar.widget.closebutton(c),
            layout = wibox.layout.fixed.horizontal(),
        },
        layout = wibox.layout.align.horizontal,
    })
end)

-- Enable sloppy focus, so that focus follows mouse.
client.connect_signal("mouse::enter", function(c)
    c:emit_signal("request::nil", "mouse_enter", { raise = false })
end)

client.connect_signal("focus", function(c)
    c.border_color = beautiful.border_focus
end)
client.connect_signal("unfocus", function(c)
    c.border_color = beautiful.border_normal
end)

beautiful.maximized_hide_border = true
beautiful.tasklist_align = "left"
beautiful.tasklist_disable_task_name = true
beautiful.tasklist_disable_icon = false
