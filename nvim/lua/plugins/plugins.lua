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

  --autocompletion and hints
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer' -- source text in the buffer
  use 'hrsh7th/cmp-path'   -- usefull snippets
  use 'saadparwaiz1/cmp_luasnip' -- autocompletion
  use 'onsails/lspkind.nvim'  -- vs-code like pictograms
  use  {
      'L3MON4D3/LuaSnip',
      version = "v2.*", -- latest release
      build = "make install_jsregexp",  -- install jsregexp (optional!).
  }


  --lsp management
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'WhoIsSethDaniel/mason-tool-installer.nvim'

  -- configuring lsp servers
  use 'hrsh7th/cmp-nvim-lsp'
  use { 'antosha417/nvim-lsp-file-operations'}
  use { "folke/neodev.nvim", opts = {} } 
  use 'neovim/nvim-lspconfig'
  use {'glepnir/lspsaga.nvim', branch= "main"} -- aditional ui stuff 
  use {'onsails/lspkind.nvim'}
  use {'jose-elias-alvarez/typescript.nvim'}

  -- Amatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

