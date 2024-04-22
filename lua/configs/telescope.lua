local M = {}

M.config = function()
  local builtin = require('telescope.builtin')

  -- keymaps
  vim.keymap.set('n', '<C-p>', builtin.find_files, {})
  vim.keymap.set('n', '<C-g>', builtin.live_grep, {})
end

return M
