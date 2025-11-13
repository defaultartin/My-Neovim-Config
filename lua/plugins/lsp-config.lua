return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			-- auto_install = true,
		},
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "rust_analyzer", "ts_ls", "pyright", "cssls", "html", "clangd", "csharp_ls", "gopls", "zls", "jdtls", "julials" },
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            vim.lsp.config('lua_ls', { capabilities = capabilities })
            vim.lsp.config('rust_analyzer', { capabilities = capabilities })
            vim.lsp.config('ts_ls', { capabilities = capabilities })
            vim.lsp.config('pyright', { capabilities = capabilities })
            vim.lsp.config('cssls', { capabilities = capabilities })
            vim.lsp.config('html', { capabilities = capabilities })
            vim.lsp.config('clangd', { capabilities = capabilities })
            vim.lsp.config('csharp_ls', { capabilities = capabilities })
            vim.lsp.config('gopls', { capabilities = capabilities })
            vim.lsp.config('jdtls', { capabilities = capabilities })
            vim.lsp.config('zls', { capabilities = capabilities })
            vim.lsp.config('julials', { capabilities = capabilities })

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
            vim.keymap.set('n', 'E', vim.diagnostic.open_float, {})
            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
