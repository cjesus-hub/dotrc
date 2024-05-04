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

local keymap = vim.keymap
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })


