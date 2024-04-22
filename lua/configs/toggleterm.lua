local M = {}

M.config = function()
  require("toggleterm").setup({
    -- Ajuste para abrir o terminal como um float
  open_mapping = [[<F5>]],
  shade_terminals = true,
  start_in_insert = true,
  persist_size = true,
  direction = 'float',
  float_opts = {
    border = 'curved',
    winblend = 3,
  }
  })

  --  vim.api.nvim_set_keymap('n', '<F5>', ':ToggleTerm<CR>', {noremap = true, silent = true})
end

return M
