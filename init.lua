--[[ 
=====================================================================
============================= NVIM CONFIG ===========================
=====================================================================
--]]

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--  Install `lazy.nvim` plugin manager 
require 'lazy-bootstrap'

--  Configure plugins 
require 'lazy-plugins'

--  Setting options 
require 'options'

--  Basic Keymaps 
require 'keymaps'

--list of filenames of plugin configuration files found in 
local plugin_configs = {
  --config telescope
   "telescope",
  --config treesitter
  "treesitter",
  --config lsp
  "lsp",
  --config cmp
  "cmp"
};

for _, plugin_config in pairs(plugin_configs) do
    require("plugin-config." .. plugin_config);
end

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
