local debugging_signs = require("util.icons").debugging_signs

return {
	"mfussenegger/nvim-dap",
    dependencies = {
	  "nvim-neotest/nvim-nio",
      "rcarriga/nvim-dap-ui",
      "mfussenegger/nvim-dap-python",
      "theHamsta/nvim-dap-virtual-text",
    },
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

        local dap_python = require("dap-python")

        require("dapui").setup({})
        require("nvim-dap-virtual-text").setup({

            commented = true, -- Show virtual text alongside comment

        })

        dap_python.setup("python3")


        vim.fn.sign_define("DapBreakpoint", {
            text = "",
            texthl = "DiagnosticSignError",
            linehl = "",
            numhl = "",
        })

        vim.fn.sign_define("DapBreakpointRejected", {
            text = "", -- or "❌"
            texthl = "DiagnosticSignError",
            linehl = "",
            numhl = "",
        })

        vim.fn.sign_define("DapStopped", {
            text = "", -- or "→"
            texthl = "DiagnosticSignWarn",
            linehl = "Visual",
            numhl = "DiagnosticSignWarn",
        })

		-- set custom icons
		for name, sign in pairs(debugging_signs) do
			sign = type(sign) == "table" and sign or { sign }
			vim.fn.sign_define(
				"Dap" .. name,
				{ text = sign[1], texthl = sign[2] or "DiagnosticInfo", linehl = sign[3], numhl = sign[3] }
			)
		end

		-- add event listeners
		dap.listeners.after.event_initialized["dapui_config"] = function()
			dapui.open()
		end

		dap.listeners.before.event_terminated["dapui_config"] = function()
			dapui.close()
		end

		dap.listeners.before.event_exited["dapui_config"] = function()
			dapui.close()
		end
	end,
}


