return {
    "folke/trouble.nvim",
    opts = {
        modes = {
            diagnostics_preview = {
                mode = "diagnostics",
                preview = {
                    type = "split",
                    relative = "win",
                    position = "right",
                    size = 0.3,
                },
            },
        },
    },
    cmd = "Trouble",
    keys = {
        {
            "<leader>xx",
            "<cmd>Trouble diagnostics_preview toggle<cr>",
            desc = "Diagnostics (Trouble)",
        },
    },
}
