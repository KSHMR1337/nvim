local mapkey = require("util.keymapper").mapvimkey

-- Buffer Navigation
mapkey("<leader>bn", "bnext", "n") -- Next buffer
mapkey("<leader>bp", "bprevious", "n") -- Prev buffer
mapkey("<leader>bb", "e #", "n") -- Switch to Other Buffer
mapkey("<leader>`", "e #", "n") -- Switch to Other Buffer

-- Directory Navigatio}n
mapkey("<leader>m", "NvimTreeFocus", "n")
mapkey("<leader>e", "NvimTreeToggle", "n")

-- Pane and Window Navigation
mapkey("<C-h>", "<C-w>h", "n") -- Navigate Left
mapkey("<C-j>", "<C-w>j", "n") -- Navigate Down
mapkey("<C-k>", "<C-w>k", "n") -- Navigate Up
mapkey("<C-l>", "<C-w>l", "n") -- Navigate Right
mapkey("<C-h>", "wincmd h", "t") -- Navigate Left
mapkey("<C-j>", "wincmd j", "t") -- Navigate Down
mapkey("<C-k>", "wincmd k", "t") -- Navigate Up
mapkey("<C-l>", "wincmd l", "t") -- Navigate Right
mapkey("<C-h>", "TmuxNavigateLeft", "n") -- Navigate Left
mapkey("<C-j>", "TmuxNavigateDown", "n") -- Navigate Down
mapkey("<C-k>", "TmuxNavigateUp", "n") -- Navigate Up
mapkey("<C-l>", "TmuxNavigateRight", "n") -- Navigate Right

-- Window Management
mapkey("<leader>sv", "vsplit", "n") -- Split Vertically
mapkey("<leader>sh", "split", "n") -- Split Horizontally
mapkey("<leader>sm", "MaximizerToggle", "n") -- Toggle Minimise

-- Indenting
vim.keymap.set("v", "<", "<gv", { silent = true, noremap = true })
vim.keymap.set("v", ">", ">gv", { silent = true, noremap = true })

-- Show Full File-Path
mapkey("<leader>pa", "echo expand('%:p')", "n") -- Show Full File Path

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", { noremap = false })

-- Tagbar
mapkey("<F8>", "TagbarToggle<CR>", "n") -- Toggle Tagbar

-- fzf

mapkey("<C-p>", "FzfLua files", "n", { silent = true })

-- Delete, change and replace without copying into register
mapkey("D", 'normal! "_D', "n", { noremap = true, silent = true })
mapkey("C", 'normal! "_C', "n", { noremap = true, silent = true })
mapkey("S", 'normal! "_S', "n", { noremap = true, silent = true })
mapkey("X", 'normal! "_X', "n", { noremap = true, silent = true })
mapkey("D", 'normal! "_D', "v", { noremap = true, silent = true })
mapkey("C", 'normal! "_C', "v", { noremap = true, silent = true })
mapkey("S", 'normal! "_S', "v", { noremap = true, silent = true })
mapkey("X", 'normal! "_X', "v", { noremap = true, silent = true })
mapkey("P", 'normal! "_dP', "v", { noremap = true, silent = true })
mapkey("dd", 'normal! "_dd', "n", { noremap = true, silent = true })
mapkey("cc", 'normal! "_cc', "n", { noremap = true, silent = true })
mapkey("ss", 'normal! "_ss', "n", { noremap = true, silent = true })
mapkey("x", 'normal! "_x', "n", { noremap = true, silent = true })
mapkey("d", 'normal! "_d', "v", { noremap = true, silent = true })
mapkey("c", 'normal! "_c', "v", { noremap = true, silent = true })
mapkey("x", 'normal! "_x', "v", { noremap = true, silent = true })
mapkey("p", 'normal! "_dp', "v", { noremap = true, silent = true })

