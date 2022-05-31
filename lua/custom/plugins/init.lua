return {
  ["yianwillis/vimcdoc"] = {},

  -- ["rcarriga/nvim-notify"] = {
  --   config = function ()
  --     require "custom.plugins.notify"
  --   end,
  -- },

  ["dstein64/vim-startuptime"] = {
    cmd = {
      "StartupTime",
    },
  },

  ["ethanholz/nvim-lastplace"] = {  -- last edit position
    config = function ()
      require ("custom.plugins.lastplace").setup()
    end,
  },

  ["phaazon/hop.nvim"] = { -- like easymotion, but more powerful
    branch = "v1", -- optional but strongly recommended
    config = function ()
      require "custom.plugins.hop"
    end,
  },

  ["tpope/vim-surround"] = {},  -- vim surround (ds+['" , cs+['")

  ["voldikss/vim-translator"] = {
    config = function ()
      require "custom.plugins.translator"
    end,
  },

  ["Shatur/neovim-session-manager"] = {
    config = function ()
      require "custom.plugins.session-manager"
    end,
  },

  ["stevearc/aerial.nvim"] = {  -- code outline window
    config = function ()
      require "custom.plugins.aerial"
    end,
  },

  ["folke/trouble.nvim"] = {  -- lsp icon
    config = function ()
      require "custom.plugins.trouble"
    end,
  },

  ["folke/todo-comments.nvim"] = {
    config = function()
      require "custom.plugins.todo-comments"
    end,
  },

  ["michaelb/sniprun"] = {
    run = "bash install.sh",
    config = function()
      require "custom.plugins.core.sniprun"
    end,
  },

  ["p00f/clangd_extensions.nvim"] = {},

  --["ravenxrz/neovim-cmake"] = { -- cmake
  ["Shatur/neovim-cmake"] = {
    config = function ()
      require "custom.plugins.core.cmake"
    end,
    -- ft = { "c", "cpp", "cmake" },
  },

  -- ["Pocco81/DAPInstall.nvim"] = {
  -- -- ["ravenxrz/DAPInstall.nvim"] = {
  --   config = function ()
  --    require "custom.plugins.dap.dap-install"
  --   end,
  -- },

  ["mfussenegger/nvim-dap"] = {
    config = function()
      require "custom.plugins.dap.dap-config"
    end,
  },

  ["rcarriga/nvim-dap-ui"] = {
    config = function ()
      require "custom.plugins.dap.dap-ui"
    end,
  },

  ["theHamsta/nvim-dap-virtual-text"] = {
    config = function ()
      require "custom.plugins.dap.dap-virtual-text"
    end,
  },





}
