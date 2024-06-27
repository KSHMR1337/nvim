return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  priority = 999,
  config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({})
  end
}
