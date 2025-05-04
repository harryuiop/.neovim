-- Plugin-specific setups

require("nvim-web-devicons").setup({
    default = true,
    strict = true,
    override = {
        zsh = { icon = "", color = "#428850", name = "Zsh" }
    },
    override_by_filename = {
        [".gitignore"] = { icon = "", color = "#f1502f", name = "Gitignore" }
    },
    override_by_extension = {
        ["log"] = { icon = "", color = "#81e043", name = "Log" }
    }
})

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { 'lua_ls', 'rust_analyzer' },
    handlers = {
        function(server_name)
            require('lspconfig')[server_name].setup({})
        end,
    },
})

require('nvim-treesitter.configs').setup {
    ensure_installed = { "lua", "python", "markdown", "tsx", "typescript" },
    auto_install = true,
    highlight = {
        enable = true,
        disable = function(lang, buf)
            local max_filesize = 100 * 1024
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            return ok and stats and stats.size > max_filesize
        end,
    }
}

require("conform").setup({
    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_format = "fallback",
    },
})
