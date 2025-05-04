
-- Floating terminal toggle

local term_buf = nil
local term_win = nil

function TermToggle(width)
    if term_win and vim.api.nvim_win_is_valid(term_win) then
        vim.cmd("hide")
    else
        vim.cmd("rightbelow vnew")
        local new_buf = vim.api.nvim_get_current_buf()
        vim.cmd("vertical resize " .. width * 2.5)
        if term_buf and vim.api.nvim_buf_is_valid(term_buf) then
            vim.cmd("buffer " .. term_buf)
            vim.cmd("bd " .. new_buf)
        else
            vim.cmd("terminal")
            term_buf = vim.api.nvim_get_current_buf()
            vim.wo.number = false
            vim.wo.relativenumber = false
            vim.wo.signcolumn = "no"
        end
        vim.cmd("startinsert!")
        term_win = vim.api.nvim_get_current_win()
    end
end
