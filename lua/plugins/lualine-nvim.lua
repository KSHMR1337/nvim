local colors = {
	black = "#251414",
	blue = "#80a0ff",
	green = "#9ece6a",
	yellow = "#e0af68",
	red = "#7B0323",
	winered = "#ff5151",
	bloodred = "#880808",
	carmine = "#D70040",
	crimson = "#DC143C",
	grey = "#303030",
	bg_gutter = "#6b2020",
	fg_statusline = "#d6a9b1",
	bg_statusline = "#361010",
	fg_sidebar = "#ff0000",
}

local cyber_meltdown = {

	normal = {
		a = { bg = colors.winered, fg = colors.black },
		b = { bg = colors.bg_gutter, fg = colors.winered},
		c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
	},

	insert = {
		a = { bg = colors.bloodred, fg = colors.black },
		b = { bg = colors.bg_gutter, fg = colors.bloodred },
	},

	command = {
		a = { bg = colors.carmine, fg = colors.black },
		b = { bg = colors.bg_gutter, fg = colors.carmine },
	},

	visual = {
		a = { bg = colors.crimson, fg = colors.black },
		b = { bg = colors.bg_gutter, fg = colors.crimson },
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
