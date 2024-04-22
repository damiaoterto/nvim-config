local M = {}

M.config = function()
  require("mason").setup()

  require("mason-lspconfig").setup({
    ensure_installed = { 
      "lua_ls",
      "rust_analyzer",
      "quick_lint_js",
      "tsserver",
      "biome",
      "vtsls",
      "docker_compose_language_service",
    },

    automatic_installation = true,
  })
end

return M
