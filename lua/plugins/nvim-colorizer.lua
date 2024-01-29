local config = function()
	require("colorizer").setup()
end

return {
	"NvChad/nvim-colorizer.lua",
	lazy = false,
	config = config,
}
