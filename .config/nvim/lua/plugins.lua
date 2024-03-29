local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
	execute 'packadd packer.nvim'
end

execute 'packadd packer.nvim'

return require('packer').startup(function()
  -- packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- lua helpers
  use {'norcalli/nvim_utils'}
  use {'nvim-lua/plenary.nvim'}

  -- LSP
  use {
    'neovim/nvim-lspconfig',
    config = function() require'c-lsp' end,
  }

  -- jdtls - java LSP
  -- use {
  --  'mfussenegger/nvim-jdtls',
    -- config = function() require'c-jdtls' end,
  -- }

  -- Completion
  use {
    'hrsh7th/nvim-cmp',
    config = function() require'c-nvim-cmp' end,
    requires = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
    }
  }
 
  -- Snippets
  use {
    'SirVer/ultisnips',
    config = function() require'c-ultisnips' end,
    requires = {
      'honza/vim-snippets',
      config = function() require'c-vim-snippets' end,
    }
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter', 
    run = ':TSUpdate',
    config = function() require'c-treesitter' end,
  } -- treesitter config and abstraction layer

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    config = function() require'c-telescope' end,
    requires = 'nvim-lua/popup.nvim',
  }

  -- Git Integration
  use {
      'TimUntersberger/neogit',
      requires = 'sindrets/diffview.nvim',
  } -- WIP Magit clone for neovim

  -- Debugging
  use {'mfussenegger/nvim-dap'} -- Debug Adapter Protocol client implementation

  -- Icons
  use {'kyazdani42/nvim-web-devicons'}
  -- Colors
  use {'norcalli/nvim-colorizer.lua'}
  use {'ChristianChiarulli/nvcode-color-schemes.vim'}
  use {'Th3Whit3Wolf/space-nvim'}
  use {
    'sainnhe/edge',
    config = function() require'c-edge-colorscheme' end,
  }

  -- File Explorer
  use {
    'kyazdani42/nvim-tree.lua',
    config = function() require'c-nvim-tree' end,
    -- requires = {'nvim-web-devicons'},
  }

  -- Status- & Tabline
  use {
    'glepnir/galaxyline.nvim', 
    config = function() require'c-galaxyline' end,
    requires = {'kyazdani42/nvim-web-devicons',}
  }
  -- use {
  --  'romgrk/barbar.nvim',
  --  config = function() require'c-barbar' end
  --}

  -- Simple quality of life improvements
  use {'glepnir/prodoc.nvim'} -- comment and annotation plugin
  -- use {'monaqa/dial.nvim'} -- consider

  -- vimwiki
  use {
    'vimwiki/vimwiki',
    branch = 'dev',
    config = function() require'c-vimwiki' end,
  }
  use { 
    'tools-life/taskwiki' ,
    require = function() require'c-taskwiki' end,
  }

  -- Startpage
  use {
    'mhinz/vim-startify',
    config = function() require'c-startify' end,
  }

  -- LaTeX support
  use {
    'lervag/vimtex',
    config = function() require'c-vimtex' end,
  }
end)
