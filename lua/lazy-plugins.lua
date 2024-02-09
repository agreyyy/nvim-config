local function p(plugin_name)
  return require("plugins." .. plugin_name)
end

-- [[ Configure plugins ]]
-- NOTE: Here is where you install your plugins.
--  You can configure plugins using the `config` key.
--
--  You can also configure plugins after the setup call,
--    as they will be available in your neovim runtime.
require('lazy').setup({
  -- NOTE: First, some plugins that don't require any configuration

  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- NOTE: This is where your plugins related to LSP can be installed.
  --  The configuration is done below. Search for lspconfig to find it below.
  p("nvim-lspconfig"),
  -- Autocompletion
  p("nvim-cmp"),
   -- Useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim', opts = {} },
    -- Adds git related signs to the gutter, as well as utilities for managing changes
  p("gitsigns"),
  --theme
   p("onedark"),


  --custom statusline
  p("lualine"),


    -- Add indentation guides even on blank lines
 p("blankline"),
  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- Fuzzy Finder (files, lsp, etc)
  -- BREAKS !!! 
  p("telescope"),
    -- Highlight, edit, and navigate code
 p("nvim-treesitter"),
  -- NOTE: Next Step on Your Neovim Journey: Add/Configure additional "plugins" for kickstart
  --       These are some example plugins that I've included in the kickstart repository.
  --       Uncomment any of the lines below to enable them.
  -- require 'kickstart.plugins.autoformat',
  -- require 'kickstart.plugins.debug',

  -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
  --    You can use this folder to prevent any conflicts with this init.lua if you're interested in keeping
  --    up-to-date with whatever is in the kickstart repo.
  --    Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
  --
  --    For additional information see: https://github.com/folke/lazy.nvim#-structuring-your-plugins
  -- { import = 'custom.plugins' },
}, {})
--]]
-- vim: ts=2 sts=2 sw=2 et
