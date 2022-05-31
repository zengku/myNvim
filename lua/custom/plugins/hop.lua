local status_ok, hop = pcall(require, "hop")
if not status_ok then
  vim.notify("hop not found!")
  return
end

hop.setup()

-- place this in one of your configuration file(s)
--vim.api.nvim_set_keymap('n', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
--vim.api.nvim_set_keymap('n', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})
--vim.api.nvim_set_keymap('o', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", {})
--vim.api.nvim_set_keymap('o', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<cr>", {})

vim.api.nvim_set_keymap('', 'f', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>", {})
vim.api.nvim_set_keymap('', 'F', "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>", {})

-- vim.api.nvim_set_keymap('', '<leader><leader>', "ablahg", {})
-- vim.api.nvim_set_keymap('n', '<leader><leader>k', "<cmd>HopLine<cr>", {})
-- vim.api.nvim_set_keymap('n', '<leader><leader>s', "<cmd>HopChar1<cr>", {})
--nvchad.map('n', 'hw', "<cmd>HopWord<cr>", {})
--nvchad.map('n', 'hj', "<cmd>HopLine<cr>", {})
