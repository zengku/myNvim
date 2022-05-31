local M = {}
--nvchad.map('n', 'H', "^", {})

M.general = {
  n = {
    ["H"] = { "^", "go to line head" },
    ["L"] = { "$", "go to line tail" },

    ["<leader>h"] = { ":set nohlsearch<CR>", "蘒  close highlight" },

    ["Q"] = { ":q<CR>", "close" },
    ["q"] = { "<Nop>", "close" },
    ["qq"] = { ":qa!<CR>", "close" },

    ["s"] = { "", "cancel the default" },
    ["sv"] = { ":vsp<CR>", "horizontal split screen" },
    ["sh"] = { ":sp<CR>", "vertical split screen" },

    ["sc"] = { "<C-w>c", "close this bufffer" },
    ["so"] = { "<C-w>o", "close other bufffer" },

    ["<C-Left>"] = { ":vertical resize -2<CR>", "" },
    ["<C-Right>"] = { ":vertical resize +2<CR>", "" },
    ["<C-Up>"] = { ":resize -2<CR>", "" },
    ["<C-Down>"] = { ":resize +2<CR>", "" },

    ["<A-Left>"] = { ":vertical resize -20<CR>", "" },
    ["<A-Right>"] = { ":vertical resize +20<CR>", "" },
    ["<A-Up>"] = { ":resize -10<CR>", "" },
    ["<A-Down>"] = { ":resize +10<CR>", "" },

    ["s="] = { "<C-w>=", "equal split screen" },

    ["<C-h>"] = { "<C-w>h", "window left" },
    ["<C-j>"] = { "<C-w>j", "window down" },
    ["<C-k>"] = { "<C-w>k", "window up" },
    ["<C-l>"] = { "<C-w>l", "window right" },

    ["st"] = { ":sp | terminal<CR>", "vertical split screen terminal" },
    ["stv"] = { ":vsp | terminal<CR>", "horizontal split screen terminal" },

    -- plugins key mapping

    ["<leader>du"] = { ":lua require'dapui'.toggle()<CR>", "   Debug UI" },

    ["<F5>"] = { ":lua require'dap'.continue()<CR>", "    Continue" },
    ["<F7>"] = { ":lua require'dap'.step_over()<CR>", "   Over" },
    ["<F8>"] = { ":lua require'dap'.step_into()<CR>", "   Into" },
    ["<F9>"] = { ":lua require'dap'.step_out()<CR>", "   Out" },
    ["<leader>db"] = { ":lua require'dap'.toggle_breakpoint()<CR>", "   Breakpoint" },
    ["<leader>dc"] = { ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", "   Breakpoint Condition" },
    ["<leader>dp"] = { ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", "   Log Point Message" },
    ["<leader>dr"] = { ":lua require'dap'.repl.open()<CR>", "   Repl Open" },
    ["<leader>dl"] = { ":lua require'dap'.run_last()<CR>", "   Run Last" },

    ["<leader><leader>k"] = { ":HopLine<CR>", "   HopLine" },
    ["<leader><leader>s"] = { ":HopChar1<CR>", "   HopChar1" },
    ["<leader><leader>f"] = { ":TodoTelescope <CR>", "   Todo-comments Find" },
    ["<leader><leader>t"] = { ":TodoTrouble<CR>", "   Todo-comments Trouble" },

    ["<leader>tt"] = { ":Trouble <CR>", "   Trouble" },
    ["<leader>td"] = { ":Trouble document_diagnostics<CR>", "   Document Diagnostics" },
    ["<leader>tw"] = { ":Trouble workspace_diagnostics<CR>", "   Workspace Diagnostics" },
    ["<leader>tq"] = { ":Trouble quickfix<CR>", "   Quick Fix" },
    ["<leader>tu"] = { ":Trouble lsp_references<CR>", "   Usage" },
    ["<leader>tg"] = { ":Trouble setloclist<CR>", "   Open changed hunk" },

    ["<leader>th"] = { ":Notifications<CR>", "   Open notify history" },

    ["<leader>rh"] = { ":SnipInfo <CR>", "   SnipInfo" },
    ["<leader>rx"] = { ":SnipClose <CR>", "   SnipClose" },

    ["<leader>ss"] = { ":SessionManager save_current_session<CR>", "   Save" },
    ["<leader>sh"] = { ":SessionManager load_session<CR>", "   Load" },
    ["<leader>sl"] = { ":SessionManager load_last_session<CR>", "   Load Last" },
    ["<leader>sd"] = { ":SessionManager delete_session<CR>", "   Delete" },

    ["<leader>cg"] = { ":CMake configure<CR>", "蘒  Configure" },
    ["<leader>ct"] = { ":CMake select_target<CR>", "蘒  Select Target" },
    ["<leader>cT"] = { ":CMake select_build_type<CR>", "蘒  Select Build Type" },
    ["<leader>cb"] = { ":CMake build<CR>", "蘒  Build Target" },
    ["<leader>ca"] = { ":CMake build_all<CR>", "蘒  Build All" },
    ["<leader>cr"] = { ":CMake build_and_run<CR>", "蘒  Run" },
    ["<leader>cd"] = { ":CMake build_and_debug<CR>", "蘒  Debug Target" },
    ["<leader>cc"] = { ":CMake cancel<CR>", "蘒  Cancel" },
    ["<leader>cs"] = { ":CMake set_target_args<CR>", "蘒  Set Arg" },
    ["<leader>cn"] = { ":CMake create_project<CR>", "蘒  New Project" },

    ["<leader>l/"] = {
       function()
          print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
       end,
       "   list workspace folders",
    },
    ["<leader>la"] = { ":lua vim.lsp.buf.add_workspace_folder()<CR>", "   Add Workspace Folder" },
    ["<leader>lx"] = { ":lua vim.lsp.buf.remove_workspace_folder()<CR>", "   Remove Workspace Folder" },
    ["<leader>ll"] = { ":lua vim.lsp.buf.code_action()<CR>", "   Code Action" },
    ["<leader>ld"] = { ":Telescope lsp_document_diagnostics<CR>", "   Document Diagnostics" },
    ["<leader>lw"] = { ":Telescope lsp_workspace_diagnostics<CR>", "   Workspace Diagnostics" },
    ["<leader>lf"] = { ":Format<CR>", "   Format" },
    ["<leader>li"] = { ":LspInfo<CR>", "   Info" },
    ["<leader>lI"] = { ":LspInstallInfo<CR>", "   Installer Info" },
    ["<leader>lj"] = { ":lua vim.lsp.diagnostic.goto_next()<CR>", "   Next Diagnostics" },
    ["<leader>lk"] = { ":lua vim.lsp.diagnostic.goto_prev()<CR>", "   Prev Diagnostics" },
    ["<leader>lq"] = { ":lua vim.lsp.diagnostic.set_loclist()<CR>", "   Quickfix" },
    ["<leader>lr"] = { ":lua vim.lsp.buf.rename()<CR>", "   Rename" },
    --["<leader>ls"] = { ":Telescope lsp_document_symbols<CR>", "   Document Symbols" },
    --["<leader>lS"] = { ":Telescope lsp_dynamic_workspace_symbols<CR>", "   Workspace Symbols" },
    ["<leader>lo"] = { ":AerialToggle <CR>", "   Aerial toggle" },

    -- TODO::terminal do not select.



  },

  v = {

    ["<"] = { "<gv", "indentation to the left" },
    [">"] = { ">gv", "indentation to the right" },

    ["<A-j>"] = { ":m .+1<CR>==", "" },
    ["<A-k>"] = { ":m .-2<CR>==", "" },

    -- plugins key mapping

    ["<leader>ru"] = { ":SnipRun <CR>", "輸  SnipRun" },


  },
}

-- M.nvimtree = {
--    -- mode_opts = { silent = false },
--    n = {
--       vim.cmd([[nnoremap \ :NvimTreeToggle<cr>]]),
--    },
-- }

return M
