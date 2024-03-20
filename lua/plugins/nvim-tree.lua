local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end


    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts('Up'))
    vim.keymap.set('n', "<leader>cd", api.tree.change_root_to_node, opts("cd into path"))
    vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
    vim.keymap.set('n', '<', ":NvimTreeResize -5<Enter>", opts('Help'))
    vim.keymap.set('n', '>', ":NvimTreeResize +5<Enter>", opts('Help'))
end


return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local api = require "nvim-tree.api"

        local function opts(desc)
            return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        require("nvim-tree").setup {
            on_attach = my_on_attach
        }
        vim.keymap.set('n', "<C-q>", api.tree.open, opts("focus"))
        vim.keymap.set('n', "<C-b>", api.tree.toggle, opts("collapse tree"))
    end,
}
