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
  { 'folke/which-key.nvim',  opts = {} },
  -- Adds git related signs to the gutter, as well as utilities for managing changes
  p("gitsigns"),
  --theme
  p("onedark"),
  --diagnostics window
  p("trouble"),
  --custom statusline
  p("lualine"),
  --terminal window in nvim
  p("toggle-term"),
  -- Add indentation guides even on blank lines
  p("blankline"),
  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },
  -- Fuzzy Finder (files, lsp, etc)
  -- BREAKS !!!
  p("telescope"),
  -- Highlight, edit, and navigate code
  p("nvim-treesitter"),
  --Debugger
  p("nvim-dap"),
  --FS viewer, basically a buffer manager
  p("nvim-tree"),

  --RUST PLUGINS
  p("rust.crates"),
  p("rust.lsp-tools"),
  --HASKELL PLUGINS
  p("haskell.lsp-tools"),
}, {})
--]]
-- vim: ts=2 sts=2 sw=2 et
