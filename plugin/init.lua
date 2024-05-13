return {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		dependencies = { 'nvim-lua/plenary.nvim' },
},
{ 'neovim/nvim-lspconfig'},
{
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
},
{
	'nvim-tree/nvim-tree.lua'
},
{
	'williamboman/mason.nvim'
},
{
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons'}
},
{
	'folke/trouble.nvim',
	dependencies = 'nvim-tree/nvim-web-devicons'
},
{
	'folke/noice.nvim',
	event = 'VeryLazy',
	dependencies = {
		'MunifTanjim/nui.nvim',
		'rcarriga/nvim-notify'
	}
},
{
	'hrsh7th/nvim-cmp',
	dependencies = {
		'neovim/nvim-lspconfig',
		'L3MON4D3/LuaSnip'
	}
},
{
	'nvim-pack/nvim-spectre',
	dependencies = 'nvim-lua/plenary.nvim'
},
{
	'ibhagwan/fzf-lua',
	dependencies = 'nvim-tree/nvim-web-devicons'
},
{
	'nvimtools/none-ls.nvim'
}
}
