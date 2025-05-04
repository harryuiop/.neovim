
-- Basic editor settings

vim.opt.number = true                -- show absolute line number
vim.opt.relativenumber = true       -- show relative line numbers
vim.opt.mouse = "a"                 -- enable mouse support
vim.opt.clipboard = "unnamedplus"  -- use system clipboard
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true            -- use spaces instead of tabs
vim.opt.smartindent = true          -- smart auto-indenting
vim.opt.undofile = true             -- persistent undo
vim.opt.signcolumn = 'yes'          -- always show the sign column
vim.opt.termguicolors = true        -- enable 24-bit color

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
