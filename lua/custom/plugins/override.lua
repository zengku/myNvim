-- overriding default plugin configs!

local M = {}

M.treesitter = {
   ensure_installed = {
      "c",
      "lua",
      "cpp",
      "vim",
      -- "markdown",
   },
}

M.nvimtree = {
   git = {
      enable = true,
   },
   actions = {
     use_system_clipboard = true,
     change_dir = {
       enable = true,
       global = false,
       restrict_above_cwd = false,
     },
     open_file = {
       quit_on_open = false,
       resize_window = true,
       window_picker = {
         enable = true,
         chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
         exclude = {
           filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
           buftype = { "nofile", "terminal", "help" },
         },
       },
     },
   },
   view = {
     width = 30,
     height = 30,
     hide_root_folder = false,
     side = "left",
     preserve_window_proportions = false,
     number = false,
     relativenumber = false,
     signcolumn = "yes",
     mappings = {
       custom_only = false,
       list = {
         -- user mappings go here
         { key = { "l", "<CR>", "o" }, action = "edit" },
         { key = "h", action = "close_node" },
         { key = "v", action = "vsplit" },
         { key = "O", action = "cd" },
       },
     },
   },

}

M.telescope = {
   extensions = {
      -- fd is needed
      media_files = {
         filetypes = { "png", "webp", "jpg", "jpeg" },
      },
   },
}






return M
