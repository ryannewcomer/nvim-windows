return {
    'hrsh7th/nvim-cmp',
    dependencies = {'L3MON4D3/LuaSnip', 'neovim/nvim-lspconfig', 'hrsh7th/cmp-nvim-lsp'},
	config = function ()
        local luasnip = require("luasnip")
        local cmp = require("cmp")
        cmp.setup({
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
            mapping = {
                ['<CR>'] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        if luasnip.expandable() then
                            luasnip.expand()
                        else
                            cmp.confirm({
                                select = true,
                            })
                        end
                    else
                        fallback()
                    end
                end),
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.locally_jumpable(1) then
                        luasnip.jump(1)
                    else
                        fallback()
                    end
                end, { "i", "s" }),
                ["<S-Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.locally_jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end, { "i", "s" }),
            },
        })
        sources = cmp.config.sources({
            { name = 'nvim_lsp' },
            { name = 'luasnip' }, -- For luasnip users.
        }, {
            { name = 'buffer' },
        })
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        require('lspconfig')['lua_ls'].setup {
            capabilities = capabilities
        }
        require('lspconfig')['pylsp'].setup {
          capabilities = capabilities
    }
    end
}


