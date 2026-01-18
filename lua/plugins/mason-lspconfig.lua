local opts = {
	ensure_installed = {
		"efm",
		"bashls",
		"ts_ls",
		"solidity_ls",
		"tailwindcss",
		"pyright",
		"lua_ls",
		"emmet_ls",
		"jsonls",
		"lemminx",
		"powershell_es",
		"clangd",
		"intelephense",
	},

	automatic_installation = true,
}

return {
	"williamboman/mason-lspconfig.nvim",
	opts = opts,
	event = "BufReadPre",
	dependencies = "williamboman/mason.nvim",
}
