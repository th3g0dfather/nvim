local packer = require('packer')


-- Have packer use popup window
packer.init {
	display = {
		open_fn = function ()
			return require("packer.util").float { border = "rounded" }
		end,
	},
}


return packer.startup(function()
	-- packer package manager
	use 'wbthomason/packer.nvim'

	use 'nvim-lua/plenary.nvim'
	use 'nvim-lua/popup.nvim'

	-- view files
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons',
		}
	}

	-- lsp
	use 'neovim/nvim-lspconfig'
	use "williamboman/nvim-lsp-installer"

	-- completion
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lua'

	-- luasnip
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'

	--nvim-treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

	-- telescope
	use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use 'sainnhe/everforest'

	use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use {
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup()
		end
	}
end)
