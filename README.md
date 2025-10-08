### Dependencies

# 🧰 Neovim Plugin Setup (via `lazy.nvim`)

This setup uses [**lazy.nvim**](https://github.com/folke/lazy.nvim) as the plugin manager. Plugins are locked with `lazy-lock.json` to ensure consistent builds across machines.
- To install or sync: ```:Lazy sync```
- If things aren't working right run ```:healthcheck```

## 🔌 Plugin Breakdown

### 🚀 Plugin Manager

| Plugin | Description |
|--------|-------------|
| **[`lazy.nvim`](https://github.com/folke/lazy.nvim)** | Plugin manager for Neovim. Handles lazy-loading, plugin updates, and dependency management. Generates `lazy-lock.json`. |

---

### 🧠 Autocompletion & Snippets

Powered by `nvim-cmp` and `LuaSnip`.

| Plugin | Description |
|--------|-------------|
| **[`nvim-cmp`](https://github.com/hrsh7th/nvim-cmp)** | Main autocompletion engine for Neovim. Highly extensible. |
| **[`cmp-buffer`](https://github.com/hrsh7th/cmp-buffer)** | Suggests words from open buffers. |
| **[`cmp-path`](https://github.com/hrsh7th/cmp-path)** | Suggests filesystem paths. |
| **[`cmp-cmdline`](https://github.com/hrsh7th/cmp-cmdline)** | Enables completion in `:` and `/` command lines. |
| **[`cmp-nvim-lsp`](https://github.com/hrsh7th/cmp-nvim-lsp)** | Adds LSP-powered completion capabilities. |
| **[`cmp_luasnip`](https://github.com/saadparwaiz1/cmp_luasnip)** | Integrates LuaSnip with `nvim-cmp`. |
| **[`LuaSnip`](https://github.com/L3MON4D3/LuaSnip)** | Fast and extensible snippet engine written in Lua. |
| **`blink.cmp`** | Unknown/experimental plugin — possibly custom or private. May extend or modify `nvim-cmp` behavior. |

---

### 🛠️ LSP (Language Server Protocol) & Formatting

| Plugin | Description |
|--------|-------------|
| **[`nvim-lspconfig`](https://github.com/neovim/nvim-lspconfig)** | Simplifies configuring built-in LSP support in Neovim. |
| **[`mason.nvim`](https://github.com/williamboman/mason.nvim)** | Manages installation of LSP servers, DAPs, linters, etc. |
| **[`mason-lspconfig.nvim`](https://github.com/williamboman/mason-lspconfig.nvim)** | Bridges Mason with `nvim-lspconfig` for easy setup. |
| **[`conform.nvim`](https://github.com/stevearc/conform.nvim)** | Lightweight and fast autoformatter runner. Integrates with formatters like `prettier`, `black`, etc. |

---

### 🌲 Treesitter (Syntax Parsing)

| Plugin | Description |
|--------|-------------|
| **[`nvim-treesitter`](https://github.com/nvim-treesitter/nvim-treesitter)** | High-performance parsing and syntax highlighting using Tree-sitter. Powers smart indentation, folding, and more. |

---

### 🗂 File Explorer & Icons

| Plugin | Description |
|--------|-------------|
| **[`nvim-tree.lua`](https://github.com/nvim-tree/nvim-tree.lua)** | Modern file explorer similar to VS Code’s sidebar. |
| **[`nvim-web-devicons`](https://github.com/nvim-tree/nvim-web-devicons)** | Adds filetype-specific icons for UI enhancements. |

##### Mappings
> Open the center UI: ```Space + ff```
> Open the sidebar UI: ```Space + t ```
> Open the grep search: ```Space + ps```

| Key | Action | Notes |
|-----|--------|-------|
| `a` | **Create** file or folder | Type a name: `myfile.lua` (file) or `myfolder/` (folder) |
| `d` | **Delete** selected item | Asks for confirmation. Can use trash if configured |
| `r` | **Rename** | Rename file or folder |
| `x` | **Cut** | Cut the selected file/folder |
| `c` | **Copy** | Copy the selected file/folder |
| `p` | **Paste** | Paste cut/copied item into current directory |
| `y` | Copy file name | Copies just the file name |
| `Y` | Copy relative path | Path relative to current working directory |
| `gy` | Copy absolute path | Full path on disk |
| `q` | **Close** file tree | Closes the `nvim-tree` sidebar |
---

### 🔍 Fuzzy Finding (Telescope)

| Plugin | Description |
|--------|-------------|
| **[`telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim)** | Fuzzy finder for files, buffers, LSP symbols, git status, and more. |
| **[`plenary.nvim`](https://github.com/nvim-lua/plenary.nvim)** | Dependency of Telescope providing Lua utility functions. |

---

### 🎨 UI Enhancements

| Plugin | Description |
|--------|-------------|
| **[`nordic.nvim`](https://github.com/AlexvZyl/nordic.nvim)** | A clean, Nord-inspired colorscheme with modern UI support. |
| **[`which-key.nvim`](https://github.com/folke/which-key.nvim)** | Displays available keybindings in a popup when you type. Great for discoverability and memorization. |

---

### 💾 Workflow Tools

| Plugin | Description |
|--------|-------------|
| **[`undotree`](https://github.com/mbbill/undotree)** | Visual interface to navigate the undo history of files. Useful for debugging or time-traveling through changes. |
> Open the sidebar UI: ```Space + u```

---

### Still to setup!
| Plugins |
|---------|
| Git Intergrations |

## 📁 Lockfile

All plugins are pinned using `lazy-lock.json`, ensuring stable and reproducible versions. To update plugins:

```vim
:Lazy update
