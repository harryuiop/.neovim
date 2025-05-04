
-- Keybindings

-- Toggle terminal
vim.keymap.set("n", "<A-t>", ":lua TermToggle(20)<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<A-t>", "<Esc>:lua TermToggle(20)<CR>", { noremap = true, silent = true })
vim.keymap.set("t", "<A-t>", "<C-\\><C-n>:lua TermToggle(20)<CR>", { noremap = true, silent = true })

-- Telescope mappings
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- UndoTree toggle
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
