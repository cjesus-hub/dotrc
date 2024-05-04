-- if packer is not installed, install it
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- run :PackerCompile when this file is updated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])


return require('packer').startup(function(use)
  --require packer.
  use 'wbthomason/packer.nvim'
 
  --lua functions required by other plugs
  use 'nvim-lua/plenary.nvim'
  

  -- colorscheme
  use 'ellisonleao/gruvbox.nvim'
  
  -- better integration with tmux
  use 'christoomey/vim-tmux-navigator'
  use 'szw/vim-maximizer'

  -- enables motions
  use 'tpope/vim-surround'
  use 'vim-scripts/replaceWithRegister'

  --better coments.
  use 'numToStr/Comment.nvim'

  --better file explorer 
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'

  -- status line
  use 'nvim-lualine/lualine.nvim'

  -- telescope fzf
  use 'nvim-telescope/telescope-fzf-native.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'folke/todo-comments.nvim'
  -- Amatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

