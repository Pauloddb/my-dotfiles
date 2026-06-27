local options = {
	formatters_by_ft = {
		lua = { "stylua" },
		rust = { "rustfmt" },
		javascript = { "lsp" },
		typescript = { "lsp" },
		javascriptreact = { "lsp" },
		typescriptreact = { "lsp" },
		python = { "ruff_format" }, -- ou { "black" }
		json = { "prettier" },
		jsonc = { "prettier" },
		yaml = { "prettier" },
		markdown = { "prettier" },
		css = { "prettier" },
		scss = { "prettier" },
		html = { "prettier" },
	},
	formatters = {
		prettier = {
			command = "prettier",
			args = {
				"--stdin-filepath",
				"$FILENAME",
				"--tab-width",
				"4", -- indentação: 2 ou 4 espaços
				"--use-tabs",
				"true", -- true = tabs, false = spaces
				"--semi",
				"true", -- true = ponto-e-vírgula no final
				"--single-quote",
				"false", -- true = aspas simples, false = duplas
				"--trailing-comma",
				"es5", -- none | es5 | all
				"--bracket-spacing",
				"true", -- true = { foo: bar }, false = {foo: bar}
				"--arrow-parens",
				"always", -- always | avoid
			},
		},
		stylua = {
			args = {
				"--indent-type",
				"Tabs",
				"--indent-width",
				"4",
				"--column-width",
				"120",
				"--line-endings",
				"Unix",
				"--stdin-filepath",
				"$FILENAME",
				"-",
			},
		},
	},

	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
}

return options
