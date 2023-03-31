vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- PACKER
	use { 'wbthomason/packer.nvim' }

	-- THEME
	use { 'rmehri01/onenord.nvim' }

	-- LSP
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
	  }
	}

	use {'folke/neodev.nvim'}

	-- DEBUG
	use {
		'mfussenegger/nvim-dap',
		requires = {
			'rcarriga/nvim-dap-ui',

			'williamboman/mason.nvim',
			'jay-babu/mason-nvim-dap.nvim',
		},
	}

	-- DIAGNOSTIC
	use {
		"folke/trouble.nvim",
		requires = "nvim-tree/nvim-web-devicons",
		config = function()
			require("trouble").setup {
			}
		end
	}

	-- FILE
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- UI
	use { 'lukas-reineke/indent-blankline.nvim' }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
	use {
		'akinsho/bufferline.nvim',
		tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	use { 'onsails/lspkind.nvim' }

	use { 'j-hui/fidget.nvim' }

	-- ORG
	use { 'vimwiki/vimwiki' }

	-- LATEX
	use { 'lervag/vimtex' }
	use { 'preservim/vim-pencil' }

	-- ZEN
	use {
		"folke/zen-mode.nvim",
		config = function()
			require("zen-mode").setup {
			}
		end
	}
	-- MISC
	
	use { 'nvim-lua/plenary.nvim' }

	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	use { 'numToStr/FTerm.nvim' }

	use { 'echasnovski/mini.align', version = '*' }

	use { 'lewis6991/impatient.nvim' }

	use { 'Civitasv/cmake-tools.nvim' }

	use { 'tikhomirov/vim-glsl' }
end)
