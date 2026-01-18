-- auto-format on save and on read
local lsp_fmt_group = vim.api.nvim_create_augroup("LspFormattingGroup", {})

local function should_format()
	local filetype = vim.bo.filetype
	-- Never autoformat C/C++ files
	if filetype == "c" or filetype == "cpp" then
		return false
	end
	return true
end

local function has_formatting_client()
	local clients = vim.lsp.get_clients({ bufnr = 0 })
	for _, client in ipairs(clients) do
		if client.supports_method("textDocument/formatting") then
			return true
		end
	end
	return false
end

-- Format on save
vim.api.nvim_create_autocmd("BufWritePre", {
	group = lsp_fmt_group,
	callback = function()
		if not should_format() then
			return
		end

		-- Try to format with any available LSP that supports formatting
		vim.lsp.buf.format({ async = true })
	end,
})

-- Format on read
vim.api.nvim_create_autocmd("BufReadPost", {
	group = lsp_fmt_group,
	callback = function()
		if not should_format() then
			return
		end

		-- Wait for LSP to attach, with retry logic for PowerShell and other slow LSPs
		local max_attempts = 20
		local attempt = 0
		local function try_format()
			attempt = attempt + 1
			if has_formatting_client() then
				vim.lsp.buf.format({ async = false })
			elseif attempt < max_attempts then
				vim.defer_fn(try_format, 200)
			end
		end
		vim.defer_fn(try_format, 200)
	end,
})

-- highlight on yank
local highlight_yank_group = vim.api.nvim_create_augroup("HighlightYankGroup", {})
vim.api.nvim_create_autocmd("TextYankPost", {
	group = highlight_yank_group,
	callback = function()
		vim.highlight.on_yank()
	end,
})


