return {
	"ray-x/aurora",
	lazy = false,
	priority = 999,
	config = function()
		vim.cmd("let g:aurora_transparent = 1")
		vim.cmd("colorscheme aurora")
	end,
}
