return {
    "epwalsh/obsidian.nvim",
    version = "3.9.0",
    lazy = true,
    ft = "markdown",
    dependencies = {
        -- Required.
        "nvim-lua/plenary.nvim",
    },
    opts = {
        ui = {
            enable = false,
        },
        mappings = {
            ["<leader>er"] = {
                action = function()
                    return require("obsidian").util.gf_passthrough()
                end,
                opts = { noremap = false, expr = true, buffer = true },
            },
        },
        workspaces = {
            {
                name = "latina",
                path = "~/vaults/latina",
            },
        },
        templates = {
            folder = "templates",
            date_format = "%Y-%m-%d",
            time_format = "%H:%M",
        },
        note_id_func = function(title)
            local final = ""
            if title ~= nil then
                -- If title is given, transform it into valid file name.
                final = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
            else
                -- If title is nil, just add 4 random uppercase letters to the suffix.
                for _ = 1, 4 do
                    final = final .. string.char(math.random(65, 90))
                end
            end
            return final
        end,
        wiki_link_func = "prepend_note_path",
    },
}
