-- This is for hiding the netrw banner
vim.g.netrw_banner = 0

-- This is for quick terminal exit with <Esc>
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])

-- For relative line numbers
vim.opt.number = true
-- For no relative line numbers in terminal
vim.api.nvim_command('autocmd TermOpen * setlocal nonumber nospell')

-- Setting mapleader
vim.g.mapleader = ' '
-- Creating a shortcut for opening the terminal at the bottom (bash terminal)
vim.api.nvim_set_keymap('n', '<leader>t', ':botright 10split term://bash<CR>', { noremap = true, silent = true })
