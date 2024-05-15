return {
	'nvimtools/none-ls.nvim',
	dependencies = 'nvim-lua/plenary.nvim',
	config = function()
		local null_ls = require("null-ls")

		local sources = {
			null_ls.builtins.completion.luasnip,
			null_ls.builtins.formatting.stylua,
		}

		null_ls.setup({ source = sources })
	end
}
