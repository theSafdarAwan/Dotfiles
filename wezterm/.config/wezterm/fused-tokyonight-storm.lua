return {
	-- The default text color
	foreground = "#a9b1d6",
	-- The default background color
	background = "#21273A",

	-- Overrides the cell background color when the current cell is occupied by the
	-- cursor and the cursor style is set to Block
	cursor_bg = "#c0caf5",
	-- Overrides the text color when the current cell is occupied by the cursor
	cursor_fg = "#2f334d",
	-- Specifies the border color of the cursor when the cursor style is set to Block,
	-- or the color of the vertical or horizontal bar when the cursor style is set to
	-- Bar or Underline.
	cursor_border = "#c0caf5",

	-- the foreground color of selected text
	selection_fg = "none",
	-- the background color of selected text
	selection_bg = "#2f334d",

	-- The color of the scrollbar "thumb"; the portion that represents the current viewport
	scrollbar_thumb = "#565f89",

	-- The color of the split lines between panes
	split = "#a9b1d6",

	ansi = {
		"#21273A",
		"#db4b4b",
		"#9ece6a",
		"#e0af68",
		"#bb9af7",
		"#7aa2f7",
		"#7dcfff",
		"#a9b1d6",
	},
	brights = {
		"#565f89",
		"#f7768e",
		"#2ac3de",
		"#FFB86C",
		"#bb9af7",
		"#7aa2f7",
		"#73daca",
		"#c0caf5",
	},

	-- Since: nightly builds only
	-- When the IME, a dead key or a leader key are being processed and are effectively
	-- holding input pending the result of input composition, change the cursor
	-- to this color to give a visual cue about the compose state.
	-- compose_cursor = "#FFB86C",

	tab_bar = {
		-- The color of the strip that goes along the top of the window
		-- (does not apply when fancy tab bar is in use)
		background = "#2f334d",

		-- The active tab is the one that has focus in the window
		active_tab = {
			-- The color of the background area for the tab
			bg_color = "#21273A",
			-- The color of the text for the tab
			fg_color = "#7aa2f7",

			-- Specify whether you want "Half", "Normal" or "Bold" intensity for the
			-- label shown for this tab.
			-- The default is "Normal"
			intensity = "Normal",

			-- Specify whether you want "None", "Single" or "Double" underline for
			-- label shown for this tab.
			-- The default is "None"
			underline = "None",

			-- Specify whether you want the text to be italic (true) or not (false)
			-- for this tab.  The default is false.
			italic = false,

			-- Specify whether you want the text to be rendered with strikethrough (true)
			-- or not for this tab.  The default is false.
			strikethrough = false,
		},

		-- Inactive tabs are the tabs that do not have focus
		inactive_tab = {
			bg_color = "#2f334d",
			fg_color = "#a9b1d6",

			-- The same options that were listed under the `active_tab` section above
			-- can also be used for `inactive_tab`.
		},

		-- You can configure some alternate styling when the mouse pointer
		-- moves over inactive tabs
		inactive_tab_hover = {
			bg_color = "#545c7e",
			fg_color = "#c0caf5",
			italic = true,

			-- The same options that were listed under the `active_tab` section above
			-- can also be used for `inactive_tab_hover`.
		},

		-- The new tab button that let you create new tabs
		new_tab = {
			bg_color = "#414868",
			fg_color = "#c0caf5",

			-- The same options that were listed under the `active_tab` section above
			-- can also be used for `new_tab`.
		},

		-- You can configure some alternate styling when the mouse pointer
		-- moves over the new tab button
		new_tab_hover = {
			bg_color = "#545c7e",
			fg_color = "#c0caf5",
			italic = true,

			-- The same options that were listed under the `active_tab` section above
			-- can also be used for `new_tab_hover`.
		},
	},
}
