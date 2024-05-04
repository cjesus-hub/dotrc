local setup, nvimtree =  pcall(require, "nvim-tree")
if not setup then
    return
end

--recommended settings from nvim docs

vim.g.loaded =  1
vim.g.loaded_netrwPlugin = 1
--vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

nvimtree.setup({
  view = { 
    width = 35, 
    relativenumber = true,
  },  
  -- change folder arrow icons
  renderer = { 
    indent_markers = { 
      enable = true,
    },
    icons = { 
      glyphs = { 
        folder = { 
          arrow_closed = "", -- arrow when folder is closed
          arrow_open = "", -- arrow when folder is open
        },
      },
    },
  },  
  -- disable window_picker for
  -- explorer to work well with
  -- window splits
  actions = { 
    open_file = { 
      window_picker = { 
        enable = false,
      },
    },
  },  
  filters = { 
    custom = { ".DS_Store" }, -- one day i will have a mac....
  },  
  git = { 
    ignore = false,
  },  
})


