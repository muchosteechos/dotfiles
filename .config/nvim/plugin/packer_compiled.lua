-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/steen/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/steen/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/steen/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/steen/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/steen/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
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

time([[Defining packer_plugins]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\1\2%\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\nc-lsp\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: vim-startify
time([[Config for vim-startify]], true)
try_loadstring("\27LJ\1\2*\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\15c-startify\frequire\0", "config", "vim-startify")
time([[Config for vim-startify]], false)
-- Config for: vimwiki
time([[Config for vimwiki]], true)
try_loadstring("\27LJ\1\2)\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\14c-vimwiki\frequire\0", "config", "vimwiki")
time([[Config for vimwiki]], false)
-- Config for: nvim-compe
time([[Config for nvim-compe]], true)
try_loadstring("\27LJ\1\2,\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\17c-nvim-compe\frequire\0", "config", "nvim-compe")
time([[Config for nvim-compe]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\1\2+\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\16c-nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: vimtex
time([[Config for vimtex]], true)
try_loadstring("\27LJ\1\2(\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\rc-vimtex\frequire\0", "config", "vimtex")
time([[Config for vimtex]], false)
-- Config for: edge
time([[Config for edge]], true)
try_loadstring("\27LJ\1\0022\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\23c-edge-colorscheme\frequire\0", "config", "edge")
time([[Config for edge]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\1\2,\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\17c-galaxyline\frequire\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\1\2+\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\16c-telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: ultisnips
time([[Config for ultisnips]], true)
try_loadstring("\27LJ\1\2+\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\16c-ultisnips\frequire\0", "config", "ultisnips")
time([[Config for ultisnips]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\1\2,\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0\17c-treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
