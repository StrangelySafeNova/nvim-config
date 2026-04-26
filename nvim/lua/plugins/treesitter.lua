return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require'nvim-treesitter.configs'.setup {
            -- A list of parser names, or "all" (the listed parsers MUST always be installed)
            ensure_installed = {
                "c",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "markdown",
                "markdown_inline",
                "rust",
                "latex",
                "html",
                "xml",
            },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,

            ignore_install = { "latex" },

            highlight = { enable = true },
            indent = { enable = true }
        }
    end,
}
