vim.api.nvim_set_keymap('n', '<A-v>', '<C-v>', {noremap = true, silent = ture})
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', {noremap = ture, silent = false})
vim.api.nvim_set_keymap('n', 'J', '5j', {noremap = true, silent=ture})
vim.api.nvim_set_keymap('n', 'K', '5k', {noremap = true, silent=ture})
vim.api.nvim_set_keymap('v', 'J', '5j', {noremap = true, silent=ture})
vim.api.nvim_set_keymap('v', 'K', '5k', {noremap = true, silent=ture})

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4


vim.opt.relativenumber=true
