return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = false,
	priority = 999,
	config = function()
		require("fzf-lua").setup({})
	end
}
