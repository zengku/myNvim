vim.cmd [[
  let g:translator_target_lang = 'zh'
  let g:translator_default_engines = ['youdao', 'bing']
]]

vim.keymap.set("n", "tt", "<cmd>TranslateW<CR>")
vim.keymap.set("v", "tt", "<cmd>TranslateW<CR>")
