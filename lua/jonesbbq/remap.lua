vim.g.mapleader = ' '
-- vim.keymap.set("n", "<leader>pv", vim.cmd )
vim.keymap.set('i', 'jk', '<ESC>', { noremap = true })
vim.keymap.set('i', '<C-/>', '<ESC>0i#<ESC>', { noremap = true })
vim.keymap.set('n', '<C-/>', '0i#<ESC>', { noremap = true })
vim.keymap.set('i', '<C-.>', '<ESC>0x<ESC>', { noremap = true })
vim.keymap.set('n', '<C-.>', '0x', { noremap = true })

-- quickly push changes to repo
vim.keymap.set('', '<buffer> <F9>', ':w<CR>:exec "!push "changes""<CR>')
vim.keymap.set('i', '<buffer> <F9>', '<ESC>:w<CR>:exec "!push "changes""<CR>')

-- yank to system clipboard
vim.keymap.set('n', '<leader>c', ':%+y<CR>', { noremap = true })
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set('', '<ESC>', ':noh<CR>', { silent = true })
vim.keymap.set('i', '{<CR>', '{<CR>}<ESC>O', { noremap = true })

-- debugger
-- vim.keymap.set('n', '<F5>', ':lua require"dap".toggle_breakpoint()<CR>', { noremap = true })
-- vim.keymap.set('i', '<F5>', ':lua require"dap".toggle_breakpoint()<CR>', { noremap = true })
-- vim.keymap.set('n', '<F6>', ':lua require"dap".continue()<CR>', { noremap = true })
-- vim.keymap.set('n', '<F7>', ':lua require"dap".step_into()<CR>', { noremap = true })
-- vim.keymap.set('n', '<F8>', ':lua require"dap".step_over()<CR>', { noremap = true })
-- vim.keymap.set('n', '<F4>', ':lua require"dapui".toggle()<CR>', { noremap = true })

-- move highlighted line(s)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
