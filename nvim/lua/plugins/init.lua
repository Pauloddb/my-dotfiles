return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre", -- uncomment for format on save
		opts = require "configs.conform",
	},

	-- These are some examples, uncomment them if you want to see them work!
	{
		"neovim/nvim-lspconfig",
		config = function()
			require "configs.lspconfig"
		end,
	},

	-- test new blink
	{ import = "nvchad.blink.lazyspec" },

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"vim",
				"lua",
				"vimdoc",
				"html",
				"css",
				"rust",
			},
		},
	},
	{
		"olimorris/persisted.nvim",
		lazy = false,
		opts = {
			autostart = true,
			autosave = true,
			autoload = true,
			use_git_branch = true,
			follow_cwd = true,
		},
	},
	{ "slint-ui/vim-slint" },
	{
		"anurag3301/nvim-platformio.lua",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
		config = function()
			require("platformio").setup {
				-- Configurações opcionais
			}
		end,
	},
	{
		"jackguo380/vim-lsp-cxx-highlight",
		config = function()
			vim.g.lsp_cxx_hl_use_text_props = 1
			vim.g.lsp_cxx_hl_light_bg = 1
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		event = "VeryLazy",
		config = function()
			require("nvim-ts-autotag").setup {
				opts = {
					-- Habilitar em todos os filetypes suportados
					enable_close = true, -- fecha tag automaticamente: <div> -> </div>
					enable_rename = true, -- renomeia tag de fechamento quando edita a de abertura
					enable_close_on_slash = true, -- fecha ao digitar </: <div> + </ -> </div>
				},
				-- Filetypes específicos (opcional, já vem com defaults)
				per_filetype = {
					["html"] = {
						enable_close = true,
					},
				},
			}
		end,
	},
}
