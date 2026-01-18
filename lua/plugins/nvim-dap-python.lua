return {
	"mfussenegger/nvim-dap-python",
	ft = "python",
	config = function()
		require("dap-python").setup("python3")

		local dap = require('dap')
		dap.configurations.python = {
			{
				type = 'python',
				request = 'launch',
				name = "Launch file",
				program = "${file}",
				pythonPath = function()
					local cwd = vim.fn.getcwd()
					if vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
						return cwd .. '/venv/bin/python'
					elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
						return cwd .. '/.venv/bin/python'
					else
						return 'python3'
					end
				end,
			},
		}
	end,
	dependencies = {
		"mfussenegger/nvim-dap",
		"rcarriga/nvim-dap-ui",
	},
}
