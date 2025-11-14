return {
	-- The default text color
	foreground = "#D4D4D4",
	-- The default background color
	background = "#1F1F1F",

	-- Overrides the cell background color when the current cell is occupied by the
	-- cursor and the cursor style is set to Block
	cursor_bg = "#4FC1FF",
	-- Overrides the text color when the current cell is occupied by the cursor
	cursor_fg = "#223E55",
	-- Specifies the border color of the cursor when the cursor style is set to Block,
	-- or the color of the vertical or horizontal bar when the cursor style is set to
	-- Bar or Underline.
	cursor_border = "#D4D4D4",

	-- the foreground color of selected text
	selection_fg = "none",
	-- the background color of selected text
	selection_bg = "rgba(68,71,90,0.5)",

	-- The color of the scrollbar "thumb"; the portion that represents the current viewport
	scrollbar_thumb = "#44475a",

	-- The color of the split lines between panes
	split = "#6272a4",

	ansi = {
		"#202d39",
		"#FB0101",
		"#6A9955",
		"#FFD602",
		"#18a2fe",
		"#D16969",
		"#9CDCFE",
		"#D4D4D4",
	},
	brights = {
		"#202d39",
		"#FB0101",
		"#6A9955",
		"#FFD602",
		"#18a2fe",
		"#D16969",
		"#9CDCFE",
		"#D4D4D4",
	},

	-- Since: nightly builds only
	-- When the IME, a dead key or a leader key are being processed and are effectively
	-- holding input pending the result of input composition, change the cursor
	-- to this color to give a visual cue about the compose state.
	-- compose_cursor = "#FFB86C",

	tab_bar = {
		-- No need to specify these colors as i won't use them --> i use tmux btw
	},
}
