" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/steen/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/steen/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/steen/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/steen/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/steen/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  edge = {
    config = { "\27LJ\1\0022\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\23c-edge-colorscheme\frequire\0" },
    loaded = true,
    path = "/home/steen/.local/share/nvim/site/pack/packer/start/edge"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\1\2,\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\17c-galaxyline\frequire\0" },
    loaded = true,
    path = "/home/steen/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  neogit = {
    loaded = true,
    path = "/home/steen/.local/share/nvim/site/pack/packer/start/neogit"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = true,
    path = "/home/steen/.local/share/nvim/site/pack/packer/start/nvcode-color-schemes.vim"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/steen/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\1\2,\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\17c-nvim-compe\frequire\0" },
    loaded = true,
    path = "/home/steen/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/steen/.local/share/nvim/site/pack/packer/start/nvim-dap"
  },
  ["nvim-jdtls"] = {
    config = { "\27LJ\1\2'\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\fc-jdtls\frequire\0" },
    loaded = true,
    path = "/home/steen/.local/share/nvim/site/pack/packer/start/nvim-jdtls"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\1\2%\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\nc-lsp\frequire\0" },
    loaded = true,
    path = "/home/steen/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-peekup"] = {
    loaded = true,
    path = "/home/steen/.local/share/nvim/site/pack/packer/start/nvim-peekup"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\1\2+\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\16c-nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/steen/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\1\2,\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\17c-treesitter\frequire\0" },
    loaded = true,
    path = "/home/steen/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/steen/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  nvim_utils = {
    loaded = true,
    path = "/home/steen/.local/share/nvim/site/pack/packer/start/nvim_utils"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/steen/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/steen/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/steen/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["prodoc.nvim"] = {
    loaded = true,
    path = "/home/steen/.local/share/nvim/site/pack/packer/start/prodoc.nvim"
  },
  ["space-nvim"] = {
    loaded = true,
    path = "/home/steen/.local/share/nvim/site/pack/packer/start/space-nvim"
  },
  taskwiki = {
    loaded = true,
    path = "/home/steen/.local/share/nvim/site/pack/packer/start/taskwiki"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\1\2+\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\16c-telescope\frequire\0" },
    loaded = true,
    path = "/home/steen/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ultisnips = {
    config = { "\27LJ\1\2+\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\16c-ultisnips\frequire\0" },
    loaded = true,
    path = "/home/steen/.local/share/nvim/site/pack/packer/start/ultisnips"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/steen/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  ["vim-startify"] = {
    config = { "\27LJ\1\2*\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\15c-startify\frequire\0" },
    loaded = true,
    path = "/home/steen/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  vimtex = {
    config = { "\27LJ\1\2(\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\rc-vimtex\frequire\0" },
    loaded = true,
    path = "/home/steen/.local/share/nvim/site/pack/packer/start/vimtex"
  },
  vimwiki = {
    config = { "\27LJ\1\2)\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\14c-vimwiki\frequire\0" },
    loaded = true,
    path = "/home/steen/.local/share/nvim/site/pack/packer/start/vimwiki"
  }
}

-- Config for: nvim-jdtls
try_loadstring("\27LJ\1\2'\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\fc-jdtls\frequire\0", "config", "nvim-jdtls")
-- Config for: nvim-lspconfig
try_loadstring("\27LJ\1\2%\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\nc-lsp\frequire\0", "config", "nvim-lspconfig")
-- Config for: vim-startify
try_loadstring("\27LJ\1\2*\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\15c-startify\frequire\0", "config", "vim-startify")
-- Config for: vimwiki
try_loadstring("\27LJ\1\2)\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\14c-vimwiki\frequire\0", "config", "vimwiki")
-- Config for: nvim-compe
try_loadstring("\27LJ\1\2,\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\17c-nvim-compe\frequire\0", "config", "nvim-compe")
-- Config for: nvim-tree.lua
try_loadstring("\27LJ\1\2+\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\16c-nvim-tree\frequire\0", "config", "nvim-tree.lua")
-- Config for: vimtex
try_loadstring("\27LJ\1\2(\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\rc-vimtex\frequire\0", "config", "vimtex")
-- Config for: edge
try_loadstring("\27LJ\1\0022\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\23c-edge-colorscheme\frequire\0", "config", "edge")
-- Config for: galaxyline.nvim
try_loadstring("\27LJ\1\2,\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\17c-galaxyline\frequire\0", "config", "galaxyline.nvim")
-- Config for: telescope.nvim
try_loadstring("\27LJ\1\2+\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\16c-telescope\frequire\0", "config", "telescope.nvim")
-- Config for: ultisnips
try_loadstring("\27LJ\1\2+\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\16c-ultisnips\frequire\0", "config", "ultisnips")
-- Config for: nvim-treesitter
try_loadstring("\27LJ\1\2,\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\17c-treesitter\frequire\0", "config", "nvim-treesitter")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
