-- KEYMAPS
vim.g.mapleader = ' '

-- allows selection to be moved with shift j and k
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- leader p or d to paste without putting deleted selection in clipboard
vim.keymap.set("v", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>d", "\"_d")

-- leader y or P to copy/paste using system clipboard
vim.keymap.set({'n', 'v'}, '<leader>y', '"+y')
vim.keymap.set({'n', 'v'}, '<leader>P', '"+p')

-- leader po to explore folder
vim.keymap.set('n', '<leader>po', vim.cmd.Ex)

-- allows selection to be moved with shift j and k
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Exit
vim.keymap.set('n', '<leader>q', '<cmd>quitall<cr>')
vim.keymap.set('n', '<leader>Q', '<cmd>quitall!<cr>')

-- Obsidian
vim.keymap.set('n', '<leader>on', '<cmd>ObsidianNew<cr>')
vim.keymap.set('v', '<leader>ox', function ()
    vim.cmd("ObsidianExtractNote " .. vim.fn.input("Note name: "))
end)
vim.keymap.set('n', '<leader>of', '<cmd>ObsidianSearch<cr>')
vim.keymap.set('v', '<leader>ol', function ()
    vim.cmd("ObsidianLink " .. vim.fn.input("Note to link: "))
end)
vim.keymap.set({'n', 'v'}, '<leader>oh', '<cmd>ObsidianFollowLink hsplit<cr>')
vim.keymap.set({'n', 'v'}, '<leader>ov', '<cmd>ObsidianFollowLink vsplit<cr>')
vim.keymap.set('n', '<leader>om', '<cmd>ObsidianTags<cr>')
vim.keymap.set('n', '<leader>og', '<cmd>ObsidianTemplate<cr>')
vim.keymap.set('n', '<leader>ot', function ()
    vim.cmd("ObsidianNewFromTemplate " .. vim.fn.input("Note name: "))
end)
vim.keymap.set('n', '<leader>ow', '<cmd>ObsidianTOC<cr>')
