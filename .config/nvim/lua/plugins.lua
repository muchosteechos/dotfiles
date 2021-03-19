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

  -- LSP
  use {'neovim/nvim-lspconfig'}
  -- lsp built-arounds
  -- Completion
  use {
    'hrsh7th/nvim-compe',
    config = function() require'c-nvim-compe' end,
  }
 
  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter', 
    run = ':TSUpdate',
    config = function() require'c-treesitter' end,
  } -- treesitter config and abstraction layer

  -- File Explorer
  use {
    'kyazdani42/nvim-tree.lua',
    -- requires = {'kyazdani42/nvim-web-devicons'},
  }

  -- Git Integration
  use {'TimUntersberger/neogit'} -- WIP Magit clone for neovim
  -- use {'tpope/fugitive'} -- do I need it when I have neogit?

  -- Icons
  use {'kyazdani42/nvim-web-devicons'}
  -- Colors
  -- use {'norcalli/nvim-colorizer.lua'}
  use {'ChristianChiarulli/nvcode-color-schemes.vim'} -- colorschemes with treesitter support (my favorite colorschemes included)
  use {'Th3Whit3Wolf/space-nvim'} -- space-nvim with treesitter support
  use {'mhartington/oceanic-next'}
  use {
    'sainnhe/edge',
    config = function() require'c-edge-colorscheme' end,
  }

  -- Status- & Tabline
  use {
    'glepnir/galaxyline.nvim', 
    config = function() require'c-galaxyline' end,
    -- requires = {'kyazdani42/nvim-web-devicons',}
  }
  -- use {
  --  'romgrk/barbar.nvim',
  --  config = function() require'c-barbar' end
  --}

  -- Simple quality of life improvements
  use {'glepnir/prodoc.nvim'} -- comment and annotation plugin
  use {'gennaro-tedesco/nvim-peekup'} -- dynamically interact with vim registers

end)
