local telescope_setup, telescope =  pcall(require, "telescope")
if not telescope_setup then
    return
end

local actions_setup, telescope =  pcall(require, "telescope.actions")
if not setup then
    return
end

telescope.setup({
  defaults = { 
    path_display = { "smart" },
    mappings = { 
      i = { 
        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
        ["<C-j>"] = actions.move_selection_next, -- move to next result
        ["<C-q>"] = actions.send_selected_to_qflist + custom_actions.open_trouble_qflist,
        ["<C-t>"] = trouble_telescope.smart_open_with_trouble,
      },
    },
  },  
})  

telescope.load_extension("fzf")
