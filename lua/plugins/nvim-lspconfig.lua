local on_attach = require("util.lsp").on_attach
local diagnostic_signs = require("util.icons").diagnostic_signs
local typescript_organise_imports = require("util.lsp").typescript_organise_imports

local config = function()
	require("neoconf").setup({})
	local cmp_nvim_lsp = require("cmp_nvim_lsp")
	local capabilities = cmp_nvim_lsp.default_capabilities()

	for type, icon in pairs(diagnostic_signs) do
		local hl = "DiagnosticSign" .. type
		vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
	end

	vim.api.nvim_create_autocmd("LspAttach", {
		callback = function(args)
			local bufnr = args.buf
			local client = vim.lsp.get_client_by_id(args.data.client_id)
			on_attach(client, bufnr)
		end,
	})

	vim.lsp.config.lua_ls = {
		capabilities = capabilities,
		settings = {
			Lua = {
				diagnostics = {
					globals = { "vim" },
				},
				workspace = {
					library = {
						vim.fn.expand("$VIMRUNTIME/lua"),
						vim.fn.expand("$XDG_CONFIG_HOME") .. "/nvim/lua",
					},
				},
			},
		},
	}

	vim.lsp.config.jsonls = {
		capabilities = capabilities,
		filetypes = { "json", "jsonc" },
	}

	vim.lsp.config.pyright = {
		capabilities = capabilities,
		settings = {
			pyright = {
				disableOrganizeImports = false,
				analysis = {
					useLibraryCodeForTypes = true,
					autoSearchPaths = true,
					diagnosticMode = "workspace",
					autoImportCompletions = true,
				},
			},
		},
	}

	vim.lsp.config.ts_ls = {
		capabilities = capabilities,
		filetypes = {
			"typescript",
			"javascript",
			"typescriptreact",
			"javascriptreact",
		},
		commands = {
			TypeScriptOrganizeImports = typescript_organise_imports,
		},
		settings = {
			typescript = {
				indentStyle = "space",
				indentSize = 2,
			},
		},
		root_markers = { "package.json", "tsconfig.json", ".git" },
	}

	vim.lsp.config.bashls = {
		capabilities = capabilities,
		filetypes = { "sh", "aliasrc" },
	}

	vim.lsp.config.solidity_ls = {
		capabilities = capabilities,
		filetypes = { "solidity" },
	}

	vim.lsp.config.emmet_ls = {
		capabilities = capabilities,
		filetypes = {
			"typescriptreact",
			"javascriptreact",
			"javascript",
			"css",
			"sass",
			"scss",
			"less",
			"svelte",
			"vue",
			"html",
		},
	}

	vim.lsp.config.dockerls = {
		capabilities = capabilities,
	}

	vim.lsp.config.lemminx = {
		capabilities = capabilities,
		filetypes = { "xml", "xsd", "xsl", "xslt", "svg" },
	}

	vim.lsp.config.powershell_es = {
		capabilities = capabilities,
		filetypes = { "ps1", "psm1", "psd1" },
		settings = {
			powershell = {
				codeFormatting = {
					autoCorrectAliases = true,
					preset = "OTBS",
					openBraceOnSameLine = true,
					newLineAfterOpenBrace = true,
					newLineAfterCloseBrace = true,
					pipelineIndentationStyle = "IncreaseIndentationForFirstPipeline",
					whitespaceBeforeOpenBrace = true,
					whitespaceBeforeOpenParen = true,
					whitespaceAroundOperator = true,
					whitespaceAfterSeparator = true,
					whitespaceBetweenParameters = false,
					whitespaceInsideBrace = true,
					addWhitespaceAroundPipe = true,
				},
				scriptAnalysis = {
					enable = true,
				},
			},
		},
	}

	vim.lsp.config.clangd = {
		capabilities = capabilities,
		cmd = {
			"clangd",
			"--offset-encoding=utf-16",
		},
	}

	vim.lsp.config.intelephense = {
		capabilities = capabilities,
		filetypes = { "php" },
		settings = {
			intelephense = {
				files = {
					maxSize = 1000000,
				},
				format = {
					enable = true,
				},
			},
		},
	}

	local luacheck = require("efmls-configs.linters.luacheck")
	local stylua = require("efmls-configs.formatters.stylua")
	local flake8 = require("efmls-configs.linters.flake8")
	local black = require("efmls-configs.formatters.black")
	local eslint = require("efmls-configs.linters.eslint")
	local prettier_d = require("efmls-configs.formatters.prettier_d")
	local fixjson = require("efmls-configs.formatters.fixjson")
	local shellcheck = require("efmls-configs.linters.shellcheck")
	local shfmt = require("efmls-configs.formatters.shfmt")
	local hadolint = require("efmls-configs.linters.hadolint")
	local solhint = require("efmls-configs.linters.solhint")
	local cpplint = require("efmls-configs.linters.cpplint")
	local clangformat = require("efmls-configs.formatters.clang_format")
	local rustfmt = require("efmls-configs.formatters.rustfmt")

	vim.lsp.config.efm = {
		filetypes = {
			"lua",
			"python",
			"json",
			"jsonc",
			"sh",
			"javascript",
			"javascriptreact",
			"typescript",
			"typescriptreact",
			"svelte",
			"vue",
			"markdown",
			"docker",
			"solidity",
			"html",
			"css",
			"rust",
			"dosbatch",
			"vb",
		},
		init_options = {
			documentFormatting = true,
			documentRangeFormatting = true,
			hover = true,
			documentSymbol = true,
			codeAction = true,
			completion = true,
		},
		settings = {
			languages = {
				lua = { luacheck, stylua },
				python = { flake8, black },
				typescript = { eslint, prettier_d },
				json = { fixjson },
				jsonc = { fixjson },
				sh = { shellcheck, shfmt },
				javascript = { eslint, prettier_d },
				javascriptreact = { eslint, prettier_d },
				typescriptreact = { eslint, prettier_d },
				svelte = { eslint, prettier_d },
				vue = { eslint, prettier_d },
				markdown = { prettier_d },
				docker = { hadolint, prettier_d },
				solidity = { solhint, prettier_d },
				html = { prettier_d },
				css = { prettier_d },
				rust = { rustfmt },
				dosbatch = { prettier_d },
				vb = { prettier_d },
			},
		},
	}

	vim.lsp.enable({
		"lua_ls",
		"jsonls",
		"pyright",
		"ts_ls",
		"bashls",
		"solidity_ls",
		"emmet_ls",
		"dockerls",
		"lemminx",
		"clangd",
		"intelephense",
		"efm",
	})

	vim.api.nvim_create_autocmd("FileType", {
		pattern = { "ps1", "psm1", "psd1" },
		callback = function()
			local ok, mason_registry = pcall(require, "mason-registry")
			if not ok then
				return
			end

			if not mason_registry.has_package("powershell-editor-services") then
				return
			end

			local pkg_ok, pkg = pcall(mason_registry.get_package, "powershell-editor-services")
			if not pkg_ok or not pkg then
				return
			end

			local path_ok, powershell_es_path = pcall(pkg.get_install_path, pkg)
			if not path_ok or not powershell_es_path then
				return
			end

			local config = vim.tbl_deep_extend("force", vim.lsp.config.powershell_es, {
				cmd = {
					"pwsh",
					"-NoLogo",
					"-NoProfile",
					"-Command",
					string.format(
						"& '%s/PowerShellEditorServices/Start-EditorServices.ps1' -BundledModulesPath '%s' -LogPath '%s/powershell_es.log' -SessionDetailsPath '%s/powershell_es.session.json' -FeatureFlags @() -AdditionalModules @() -HostName nvim -HostProfileId 0 -HostVersion 1.0.0 -Stdio -LogLevel Normal",
						powershell_es_path,
						powershell_es_path,
						vim.fn.stdpath("cache"),
						vim.fn.stdpath("cache")
					),
				}
			})

			vim.lsp.start(config)
		end,
	})
end

return {
	"neovim/nvim-lspconfig",
	config = config,
	lazy = false,
	dependencies = {
		"windwp/nvim-autopairs",
		"williamboman/mason.nvim",
		"creativenull/efmls-configs-nvim",
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-nvim-lsp",
	},
}

