local wezterm = require("wezterm")
local dracula = require("dracula")

local font_name = "FiraCode Nerd Font"
local function font_with_fallback(name, params)
    local names = { name, "Apple Color Emoji", "azuki_font" }
    return wezterm.font_with_fallback(names, params)
end

return {
    colors = dracula,

    front_end = "OpenGL",
    enable_wayland = false,

    tab_bar_at_bottom = true,
    use_fancy_tab_bar = false,
    hide_tab_bar_if_only_one_tab = true,
    show_tab_index_in_tab_bar = false,
    inactive_pane_hsb = { saturation = 1.0, brightness = 0.8 },
    window_frame = { active_titlebar_bg = "#090909", font = font_with_fallback(font_name, { bold = true }) },

    window_background_opacity = 1.0,
    audible_bell = "Disabled",

    font_size = 11.0,
    -- Font config
    font = font_with_fallback(font_name),
    -- font = wezterm.font("", { weight = "Medium", italic = false }),
    font_rules = {
        {
            italic = true,
            font = font_with_fallback(font_name, { italic = true }),
        },
        {
            italic = true,
            intensity = "Bold",
            font = font_with_fallback(font_name, { italic = true, bold = true }),
        },
        {
            intensity = "Bold",
            font = font_with_fallback(font_name, { bold = true }),
        },
    },

    -- default_cursor_style = "BlinkingUnderline",
    cursor_blink_rate = 0,
    line_height = 1,

    window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0,
    },
    check_for_updates = false,
    warn_about_missing_glyphs = false,
    window_close_confirmation = "NeverPrompt",

    disable_default_key_bindings = true,
    keys = {
        {
            key = "v",
            mods = "CTRL|ALT",
            action = wezterm.action({
                SplitHorizontal = { domain = "CurrentPaneDomain" },
            }),
        },
        {
            key = "s",
            mods = "CTRL|ALT",
            action = wezterm.action({
                SplitVertical = { domain = "CurrentPaneDomain" },
            }),
        },
        {
            key = "q",
            mods = "CTRL",
            action = wezterm.action({ CloseCurrentPane = { confirm = false } }),
        },
        {
            key = "h",
            mods = "CTRL|SHIFT",
            action = wezterm.action({ ActivatePaneDirection = "Left" }),
        },
        {
            key = "l",
            mods = "CTRL|SHIFT",
            action = wezterm.action({ ActivatePaneDirection = "Right" }),
        },
        {
            key = "k",
            mods = "CTRL|SHIFT",
            action = wezterm.action({ ActivatePaneDirection = "Up" }),
        },
        {
            key = "j",
            mods = "CTRL|SHIFT",
            action = wezterm.action({ ActivatePaneDirection = "Down" }),
        },
        {
            key = "h",
            mods = "CTRL|SHIFT|ALT",
            action = wezterm.action({ AdjustPaneSize = { "Left", 1 } }),
        },
        {
            key = "l",
            mods = "CTRL|SHIFT|ALT",
            action = wezterm.action({ AdjustPaneSize = { "Right", 1 } }),
        },
        {
            key = "k",
            mods = "CTRL|SHIFT|ALT",
            action = wezterm.action({ AdjustPaneSize = { "Up", 1 } }),
        },
        {
            key = "j",
            mods = "CTRL|SHIFT|ALT",
            action = wezterm.action({ AdjustPaneSize = { "Down", 1 } }),
        },
        {
            key = "t",
            mods = "CTRL|SHIFT",
            action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }),
        },
        {
            key = "Tab",
            mods = "CTRL",
            action = wezterm.action({ ActivateTabRelative = 1 }),
        },
        {
            key = "Tab",
            mods = "CTRL|SHIFT",
            action = wezterm.action({ ActivateTabRelative = -1 }),
        }, -- standard copy/paste bindings
        {
            key = "x",
            mods = "CTRL|SHIFT",
            action = "ActivateCopyMode",
        },
        {
            key = "p",
            mods = "CTRL|SHIFT",
            action = wezterm.action({ PasteFrom = "Clipboard" }),
        },
        {
            key = "c",
            mods = "CTRL|SHIFT",
            action = wezterm.action({ CopyTo = "ClipboardAndPrimarySelection" }),
        },
    },
}
