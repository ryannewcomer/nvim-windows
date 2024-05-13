return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.6',
	dependencies = 'nvim-lua/plenary.nvim',
	keys = {
		{
				";f",
				function()
					local builtin = require("telescope.builtin")
					builtin.find_files({
						no_ignore = false,
						hidden = true,
					})
				end,
				desc = "Lists files in your current working directory, respects .gitignore",
			},
			{
				";r",
				function()
					local builtin = require("telescope.builtin")
					builtin.live_grep({
						additional_args = { "--hidden" },
					})
				end,
				desc = "Search for a string in your current working directory and get results live as you type, respects .gitignore",
			},
	}
	require('telescope').setup{}
}
