require("nvchad.configs.lspconfig").defaults()

local servers = {
	"html",
	"cssls",
	"rust_analyzer",
	"vtsls",
	"pyright",
	"slint_lsp",
	"asm_lsp",
	-- "qmlls",
	"tailwindcss",
}

vim.lsp.enable(servers)

-- ============================================
-- RUST ANALYZER
-- ============================================

vim.lsp.config("rust_analyzer", {
	settings = {
		["rust-analyzer"] = {
			inlayHints = {
				bindingModeHints = { enable = false },
				closureCaptureHints = { enable = true },
				closureReturnTypeHints = { enable = "always" },
				discriminantHints = { enable = "always" },
				expressionAdjustmentHints = { enable = "always" },
				implicitDrops = { enable = false },
				lifetimeElisionHints = { enable = "always", useParameterNames = true },
				parameterHints = { enable = true },
				reborrowHints = { enable = "always" },
				renderColons = true,
				typeHints = { enable = true, hideClosureInitialization = false, hideNamedConstructor = false },
			},
			cargo = { allFeatures = true },
			procMacro = { enable = true },
			checkOnSave = { command = "clippy" },
		},
	},
})

-- ============================================
-- LUA_LS
-- ============================================

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			format = {
				indentSize = 4,
				tabSize = 4,
				convertTabsToSpaces = false,
			},
			hint = {
				enable = true,
				arrayIndex = "Enable",
				await = true,
				paramName = "All",
				paramType = true,
				semicolon = "All",
				setType = true,
			},
			diagnostics = {
				globals = { "hl" },
			},
			workspace = {
				library = {
					vim.fn.expand "$VIMRUNTIME/lua",
					vim.fn.expand "$VIMRUNTIME/lua/vim/lsp",
					vim.fn.stdpath "data" .. "/lazy/ui/nvchad_types",
					vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy",
					"/usr/share/hypr/stubs/",
				},
				maxPreload = 100000,
				preloadFileSize = 10000,
				checkThirdParty = false,
			},
			telemetry = { enable = false },
		},
	},
})

-- ============================================
-- TAILWINDCSS
-- ============================================

vim.lsp.config("tailwindcss", {
	filetypes = {
		"html",
		"css",
		"scss",
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
		"vue",
		"svelte",
	},
	root_markers = {
		"tailwind.config.js",
		"tailwind.config.ts",
		"postcss.config.js",
		"package.json",
	},
})

-- ============================================
-- TAILWINDCSS
-- ============================================

vim.lsp.config("vtsls", {
	filetypes = {
		"javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"typescript.tsx",
	},
	settings = {
		typescript = {
			format = {
				indentSize = 4,
				tabSize = 4,
				convertTabsToSpaces = false,
			},
			inlayHints = {
				parameterNames = { enabled = "literals" },
				parameterTypes = { enabled = true },
				variableTypes = { enabled = true },
				propertyDeclarationTypes = { enabled = true },
				functionLikeReturnTypes = { enabled = true },
				enumMemberValues = { enabled = true },
			},
		},
		typescriptreact = {
			format = {
				indentSize = 4,
				tabSize = 4,
				convertTabsToSpaces = false,
			},
			inlayHints = {
				parameterNames = { enabled = "literals" },
				parameterTypes = { enabled = true },
				variableTypes = { enabled = true },
				propertyDeclarationTypes = { enabled = true },
				functionLikeReturnTypes = { enabled = true },
				enumMemberValues = { enabled = true },
			},
		},
		javascript = {
			format = {
				indentSize = 4,
				tabSize = 4,
				convertTabsToSpaces = false,
			},
			inlayHints = {
				parameterNames = { enabled = "literals" },
				parameterTypes = { enabled = true },
				variableTypes = { enabled = true },
				propertyDeclarationTypes = { enabled = true },
				functionLikeReturnTypes = { enabled = true },
				enumMemberValues = { enabled = true },
			},
		},
		javascriptreact = {
			format = {
				indentSize = 4,
				tabSize = 4,
				convertTabsToSpaces = false,
			},
			inlayHints = {
				parameterNames = { enabled = "literals" },
				parameterTypes = { enabled = true },
				variableTypes = { enabled = true },
				propertyDeclarationTypes = { enabled = true },
				functionLikeReturnTypes = { enabled = true },
				enumMemberValues = { enabled = true },
			},
		},
	},
})

-- -- ============================================
-- -- CLANGD XTENSA: tudo em um (highlighting + diagnostics + autocomplete)
-- -- ============================================
--
-- vim.lsp.enable { "clangd" }
--
-- vim.lsp.config("clangd", {
--   cmd = {
--     vim.fn.expand "~/.local/bin/clangd-xtensa",
--     "--background-index",
--     "--compile-commands-dir=.",
--     "--query-driver=/home/paulo/.platformio/packages/toolchain-xtensa-esp32/bin/xtensa-esp32-elf-g++",
--     "--clang-tidy",
--     "--completion-style=bundled",
--     "--pch-storage=memory",
--     "--cross-file-rename",
--     "--header-insertion=iwyu",
--   },
--   root_markers = { "platformio.ini", "compile_commands.json", ".git" },
--   filetypes = { "c", "cpp", "objc", "objcpp" },
-- })
