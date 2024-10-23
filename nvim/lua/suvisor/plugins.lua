-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'tikhomirov/vim-glsl'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

--   use({
-- 	  'rose-pine/neovim',
-- 	  as = 'rose-pine',
-- 	  config = function()
-- 		  vim.cmd('colorscheme rose-pine')
-- 	  end
--   })
  --use('savq/melange-nvim')
  use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              icons = false,
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  })
use {'nyoom-engineering/oxocarbon.nvim'}
--use { "ellisonleao/gruvbox.nvim" };
 -- use {
 --   		'nvim-treesitter/nvim-treesitter',
 --   		run = function()
 --   			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
 --   			ts_update()
 --   		end,}
  --use("nvim-treesitter/playground")
  use{"rose-pine/neovim", as = "rose-pine"}
  use('hrsh7th/cmp-cmdline')
  use("theprimeagen/harpoon")
  use("theprimeagen/refactoring.nvim")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use("nvim-treesitter/nvim-treesitter-context");

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},
		   {'mason-org/mason-registry'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use("folke/zen-mode.nvim")
  use("github/copilot.vim")
  use("laytan/cloak.nvim")
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use('nvim-tree/nvim-web-devicons')
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end}
  use({     
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    }
  })
  use('junegunn/vim-easy-align')
use {

  'kdheepak/tabline.nvim',

  config = function()

    require'tabline'.setup {

      -- Defaults configuration options

      enable = true,

      options = {

      -- If lualine is installed tabline will use separators configured in lualine by default.

      -- These options can be used to override those settings.

        section_separators = {'', ''},

        component_separators = {'', ''},

        max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3

        show_tabs_always = false, -- this shows tabs only when there are more than one tab or if the first tab is named

        show_devicons = true, -- this shows devicons in buffer section

        show_bufnr = false, -- this appends [bufnr] to buffer section,

        show_filename_only = false, -- shows base filename only instead of relative path in filename

        modified_icon = "+ ", -- change the default modified icon

        modified_italic = false, -- set to true by default; this determines whether the filename turns italic if modified

        show_tabs_only = false, -- this shows only tabs instead of tabs + buffers

      }

    }

    vim.cmd[[

      set guioptions-=e " Use showtabline in gui vim

      set sessionoptions+=tabpages,globals " store tabpages and globals in session

    ]]

  end,

  requires = { { 'hoob3rt/lualine.nvim', opt=true }, {'kyazdani42/nvim-web-devicons', opt = true} }

	}
end)
