local home_path = vim.env.HOME
local user_data = home_path..'/.local/share/'
local vimwiki_path = user_data..'vimwiki'

vim.g.vimiwiki_list = {
  {
    path = vimwiki_path, 
    syntax = 'markdown', 
    ext = '.md'
  }
}
