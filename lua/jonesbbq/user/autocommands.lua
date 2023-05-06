vim.api.nvim_create_autocmd({ 'FileType' }, {
    pattern = { 'python' },
    callback = function()
        vim.keymap.set('n', '<F10>', ':w<CR>:exec "!python3" shellescape(@%, 1)<CR>')
    end
})

vim.api.nvim_create_autocmd({ 'FileType' }, {
    pattern = { 'python' },
    callback = function()
        vim.keymap.set('i', '<F10>', '<ESC>:w<CR>:exec "!python3" shellescape(@%, 1)<CR>')
    end
})
