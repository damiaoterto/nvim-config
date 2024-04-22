local M = {}

M.config = function()
  require("nvim-lsp-installer").setup {}

  local lspconfig = require('lspconfig')
  local capabilities = require('cmp_nvim_lsp').default_capabilities()

  lspconfig.tsserver.setup({
    capabilities = capabilities,
  })

  lspconfig.rust_analyzer.setup {
    capabilities = capabilities,
    settings = {
      ['rust-analyzer'] = {},
    },
  }

  lspconfig.lua_ls.setup({
    capabilities = capabilities,
  })

  lspconfig.docker_compose_language_service.setup({
    capabilities = capabilities,
  })
end

return M
