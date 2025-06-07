return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
        },
        config = function()
            local lspconfig = require("lspconfig")
            local cmp = require("cmp")
            local luasnip = require("luasnip")
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = { 
                    "lua_ls", 
                    "kotlin_language_server",
                    "pico8_ls",
                    "pylsp"
                },
            })
            cmp.setup({
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                    ['<C-n>'] = cmp.mapping.select_next_item(),
                    ['<C-p>'] = cmp.mapping.select_prev_item(),
                    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                }, {
                    { name = "buffer" },
                    { name = "path" },
                }),
            })
            local on_attach = function(client, bufnr)
                local map = vim.keymap.set
                local opts = { buffer = bufnr, noremap = true, silent = true }
                map('n', 'gd', vim.lsp.buf.definition, opts)
                map('n', 'gr', vim.lsp.buf.references, opts)
                map('n', 'gD', vim.lsp.buf.declaration, opts)
                map('n', 'K', vim.lsp.buf.hover, opts)
                map('n', 'gi', vim.lsp.buf.implementation, opts)
                map('n', '<leader>rn', vim.lsp.buf.rename, opts)
                map('n', '<leader>ca', vim.lsp.buf.code_action, opts)
                map('n', '<leader>e', vim.diagnostic.open_float, opts)
                map('n', '[d', vim.diagnostic.goto_prev, opts)
                map('n', ']d', vim.diagnostic.goto_next, opts)
                if client.supports_method("textDocument/formatting") then
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        group = vim.api.nvim_create_augroup("LspFormatOnSave", { clear = true }),
                        buffer = bufnr,
                        callback = function()
                            vim.lsp.buf.format({ async = true, bufnr = bufnr })
                        end,
                    })
                end
            end
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            for _, server_name in ipairs(require("mason-lspconfig").get_installed_servers()) do
                lspconfig[server_name].setup({
                    on_attach = on_attach,
                    capabilities = capabilities,
                })
            end
        end,
    },
}
