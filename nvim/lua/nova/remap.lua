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
