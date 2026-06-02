require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "rust_analyzer",
  "ts_ls",
  "pyright",
  "slint_lsp",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers

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
      procMacro = {
        enable = true,
      },
      checkOnSave = { command = "clippy" },
    },
  },
})

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
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
          -- Mantém as libs do NvChad (você pode ver no core qual são)
          vim.fn.expand "$VIMRUNTIME/lua",
          vim.fn.expand "$VIMRUNTIME/lua/vim/lsp",
          vim.fn.stdpath "data" .. "/lazy/ui/nvchad_types",
          vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy",
          -- Adiciona Hyprland
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
