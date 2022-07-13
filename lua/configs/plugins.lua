local packer = require('packer')

-- Have packer use popup window
packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "rounded" }
		end,
	},
}


return packer.startup(function()
	-- packer package manager
	use 'wbthomason/packer.nvim'

	-- basic plugins
	use 'nvim-lua/plenary.nvim'
	use 'nvim-lua/popup.nvim'

	-- icons
	use 'kyazdani42/nvim-web-devicons'

	-- colorschemes
	use 'sainnhe/everforest'

	-- filemanager
	use 'kyazdani42/nvim-tree.lua'

	-- basic editor stuff
	use { 'akinsho/bufferline.nvim', tag = "v2.*" } -- tab line
	use 'nvim-lualine/lualine.nvim' -- status line
	use { "akinsho/toggleterm.nvim", tag = 'v1.*' } -- terminal
	use 'norcalli/nvim-colorizer.lua'
	use "windwp/nvim-autopairs"
	use 'p00f/nvim-ts-rainbow' -- diffrenet color for each paired brackets
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}
    use 'lukas-reineke/indent-blankline.nvim'

	--nvim-treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	-- telescope
	use {
		'nvim-telescope/telescope.nvim',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use 'nvim-telescope/telescope-media-files.nvim'

	-- completion
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lua'

	-- snippets { luasnip }
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'

	-- lsp
	use 'neovim/nvim-lspconfig'
	use "williamboman/nvim-lsp-installer"

	--jdtls
	use 'mfussenegger/nvim-jdtls'
	use 'mfussenegger/nvim-dap'
	use 'rcarriga/nvim-dap-ui'
	use 'theHamsta/nvim-dap-virtual-text'

	-- git
	use {
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup()
		end
	}

	-- note taking
	use 'nvim-neorg/neorg'

end)
