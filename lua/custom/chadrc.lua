-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:


M.options = {
   user = function()
      require "custom.options"
   end,
}

M.mappings = require "custom.mappings"

-- M.ui = {
--    theme = "tokyonight",
-- }

local override = require "custom.plugins.override"
local userPlugins = require "custom.plugins"

M.plugins = {
    options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },

      statusline = {
         separator_style = "block",     -- default/round/slant/block/arrow
      },

      telescope = {
         extensions = { "themes", "terms" }
      },
   },

   override = {
      ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
      ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
      ["nvim-telescope/telescope.nvim"] = override.telescope,
   },

  user = userPlugins,

}







return M
