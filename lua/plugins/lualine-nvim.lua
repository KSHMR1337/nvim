local colors = {
	black = "#251414",
	purple = "#b2003d",
	magenta = "#ff4d6a",
	pink = "#ff6680",
	light_red = "#ff3d5a",
	dark_red = "#8b001e",
	bright_red = "#ff1a33",
	deep_pink = "#c8002d",
	crimson = "#d61141",
	grey = "#303030",
	bg_gutter = "#9a2434",
	fg_statusline = "#ffd6e0",
	bg_statusline = "#5c1724",
	fg_sidebar = "#ff5c8a",
}

local cyber_meltdown = {

	normal = {
		a = { bg = colors.light_red, fg = colors.black },
		b = { bg = colors.bg_gutter, fg = colors.light_red },
		c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
	},

	insert = {
		a = { bg = colors.bright_red, fg = colors.black },
		b = { bg = colors.bg_gutter, fg = colors.bright_red },
	},

	command = {
		a = { bg = colors.deep_pink, fg = colors.black },
		b = { bg = colors.bg_gutter, fg = colors.deep_pink },
	},

	visual = {
		a = { bg = colors.crimson, fg = colors.black },
		b = { bg = colors.bg_gutter, fg = colors.crimson },
	},

	replace = {
		a = { bg = colors.dark_red, fg = colors.black },
		b = { bg = colors.bg_gutter, fg = colors.dark_red },
	},

	inactive = {
		a = { bg = colors.bg_statusline, fg = colors.purple },
		b = { bg = colors.bg_statusline, fg = colors.bg_gutter, gui = "bold" },
		c = { bg = colors.bg_statusline, fg = colors.bg_gutter },
	},
}

local config = function()
	-- local theme = require("lualine.themes.horizon")
	-- theme.normal.c.bg = nil

	require("lualine").setup({
		options = {
			theme = cyber_meltdown,
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
