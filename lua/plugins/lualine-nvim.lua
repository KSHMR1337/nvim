local colors = {
	black = "#141425",
	blue = "#80a0ff",
	green = "#9ece6a",
	yellow = "#e0af68",
	red = "#ff5189",
	purple = "#ad8ee6",
	violet = "#d183e8",
	amethyst = "#9966cc",
	magenta = "#FF00FF",
	grey = "#303030",
	bg_gutter = "#443454",
	fg_statusline = "#a9b1d6",
	bg_statusline = "#322333",
	fg_sidebar = "#a9b1d6",
}

local purple_rain = {

	normal = {
		a = { bg = colors.purple, fg = colors.black },
		b = { bg = colors.bg_gutter, fg = colors.purple },
		c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
	},

	insert = {
		a = { bg = colors.violet, fg = colors.black },
		b = { bg = colors.bg_gutter, fg = colors.violet },
	},

	command = {
		a = { bg = colors.amethyst, fg = colors.black },
		b = { bg = colors.bg_gutter, fg = colors.amethyst },
	},

	visual = {
		a = { bg = colors.magenta, fg = colors.black },
		b = { bg = colors.bg_gutter, fg = colors.magenta },
	},

	replace = {
		a = { bg = colors.red, fg = colors.black },
		b = { bg = colors.bg_gutter, fg = colors.red },
	},

	inactive = {
		a = { bg = colors.bg_statusline, fg = colors.blue },
		b = { bg = colors.bg_statusline, fg = colors.bg_gutter, gui = "bold" },
		c = { bg = colors.bg_statusline, fg = colors.bg_gutter },
	},
}

local config = function()
	-- local theme = require("lualine.themes.horizon")
	-- theme.normal.c.bg = nil

	require("lualine").setup({
		options = {
			theme = purple_rain,
			globalstatus = true,
			component_separators = { left = "|", right = "|" },
			section_separators = { left = "", right = "" },
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "buffers" },
			lualine_x = { "encoding", "fileformat", "filetype" },
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
		tabline = {},
	})
end

return {
	"nvim-lualine/lualine.nvim",
	lazy = false,
	config = config,
}
