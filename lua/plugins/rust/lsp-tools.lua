return {
    "simrat39/rust-tools.nvim",
    dependencies = {
        "neovim/nvim-lspconfig",
        "mfussenegger/nvim-dap",
        "nvim-lua/plenary.nvim"
    },

    ft = "rust",

    config = function()
        local rt = require("rust-tools")

        rt.setup({
            server = {
                on_attach = function(_, bufnr)
                    -- Hover actions
                    vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions,
                        { buffer = bufnr, desc = "hover actions" })
                    -- Code action groups
                    vim.keymap.set("n", "<Leader>ca", rt.code_action_group.code_action_group,
                        { buffer = bufnr, desc = "code actions" })
                end,
            },
        })
    end
}
