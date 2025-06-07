vim.o.tabstop = 4
vim.o.expandtab = True
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.opt.relativenumber = true

local opts = { noremap = true, silent = true }
vim.keymap.set('n', 'J', '5j', opts)
vim.keymap.set('x', 'J', '5j', opts)
vim.keymap.set('n', 'K', '5k', opts)
vim.keymap.set('x', 'K', '5k', opts)

vim.keymap.set('v','<C-y>', '"+y')

vim.keymap.set('n', '<C-j>', 'J', {noremap = true})
vim.wo.relativenumber = true

-- disable mouse
vim.opt.mouse = ""

-- Ctrl+S 保存
vim.keymap.set({'n', 'i', 'v'}, '<C-s>', '<cmd>w<CR>', { noremap = true })

-- Ctrl+Shift+N 用 . 运行当前脚本
vim.keymap.set('n', '<C-n>', function()
  local file = vim.fn.expand('%:p')
  vim.cmd('w')
  vim.cmd('split | terminal . "' .. file .. '"')
end, { noremap = true, silent = true })
vim.keymap.set('n', '<C-q>', '<cmd>bd<CR>', { noremap=true, silent=true })

require("config.lazy")

