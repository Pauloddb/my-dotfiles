require("nvchad.configs.lspconfig").defaults()

local servers = {
	"html",
	"cssls",
	"rust_analyzer",
	"vtsls",
	"pyright",
	"slint_lsp",
	"asm_lsp",
	"qmlls",
	"tailwindcss",
	"elixirls",
	"clangd",
	"zls",
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

-- ============================================
-- ELIXIRLS
-- ============================================

vim.lsp.config("elixirls", {
	cmd = {
		vim.fn.stdpath "data" .. "/mason/bin/elixir-ls",
	},
	settings = {
		elixirLS = {
			dialyzerEnabled = true,
			dialyzerFormat = "dialyxir_short",
			fetchDeps = false, -- não rode mix deps.get automaticamente
			suggestSpecs = true,
			signatureAfterComplete = true,
			enableTestLenses = false,
		},
	},
})

-- ============================================
-- CLANGD
-- ============================================

vim.lsp.config("clangd", {
	cmd = {
		"clangd",
		"--clang-tidy", -- Ativa análise estática com clang-tidy
		"--background-index", -- Indexação em background para melhor performance
		"--offset-encoding=utf-8", -- FIX: evita erro de encoding no Neovim 0.11+
		"--header-insertion=never", -- Não insere headers automaticamente
		"--completion-style=bundled", -- Completions mais completos
		"--pch-storage=memory", -- Armazena precompiled headers em RAM (mais rápido)
		"--cross-file-rename", -- Permite renomear símbolos entre arquivos
	},
	filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
	root_markers = {
		".clangd",
		".clang-tidy",
		".clang-format",
		"compile_commands.json",
		"compile_flags.txt",
		"configure.ac", -- AutoTools
		".git",
	},
	capabilities = {
		textDocument = {
			completion = {
				editsNearCursor = true,
			},
		},
		offsetEncoding = { "utf-8", "utf-16" },
	},
})

-- ============================================
-- ZLS
-- ============================================
vim.lsp.config("zls", {
	cmd = { "zls" }, -- ou o caminho completo se não estiver no PATH
	filetypes = { "zig", "zir" },
	root_markers = { "build.zig", ".git" },
	single_file_support = true,
	settings = {
		zls = {
			-- Habilita build-on-save diagnostics (executa `zig build` no save)
			-- Para isso funcionar, seu build.zig precisa ter um step "check"
			-- enable_build_on_save = true,
			-- build_on_save_step = "check",

			-- Caminho do executável zig (se não estiver no PATH)
			-- zig_exe_path = "/usr/bin/zig",

			-- Habilita inlay hints (similar ao rust_analyzer)
			enable_inlay_hints = true,

			-- Habilita semantic tokens para syntax highlighting avançado
			enable_semantic_tokens = true,

			-- Habilita snippets de completion
			enable_snippets = true,

			-- Habilita warnings de style guide
			warn_style = false,

			-- Completions com operadores * e ?
			operator_completions = true,
		},
	},
})
