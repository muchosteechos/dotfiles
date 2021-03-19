local utils = require('my_utils')

utils.opt('o', 'completeopt', 'menuone,noselect')

-- pretty much default configuration
-- think/get info about how to get good sorting of items
require'compe'.setup {
  enabled = true;
  autocomplete = false; -- open the menu automatically: false
  debug = false;
  min_length = 1;
  preselect = 'always'; -- when menu opens preselect
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = false;
  };
}

vim.api.nvim_set_keymap('i', '<C-Space>', 'compe#complete()', { expr = true, silent = true, noremap = true })
vim.api.nvim_set_keymap('i', '<CR>', "compe#confirm('<CR>')", { expr = true, silent = true, noremap = true })
vim.api.nvim_set_keymap('i', '<C-e>', "compe#complete('<C-e>')", { expr = true, silent = true, noremap = true })
vim.api.nvim_set_keymap('i', "<C-f>", "compe#scroll({ 'delta': +4 })", { expr = true, silent = true, noremap = true })
vim.api.nvim_set_keymap('i', '<C-d>', "compe#scroll({ 'delta': -4})", { expr = true, silent = true, noremap = true})
