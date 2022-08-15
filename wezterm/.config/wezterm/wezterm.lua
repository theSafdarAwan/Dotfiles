local wezterm = require("wezterm")
local dracula = require("dracula")

return {
	colors = dracula,
	tab_bar_at_bottom = true,
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,

	window_background_opacity = 0.99,

	font_size = 11.0,
	font = wezterm.font("FiraCode Nerd Font", { weight = "Medium", italic = false }),

	default_cursor_style = "BlinkingBar",
	window_padding = {
		left = 2,
		right = 2,
		top = 0,
		bottom = 0,
	},
}
