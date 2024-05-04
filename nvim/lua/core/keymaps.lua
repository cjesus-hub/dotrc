--use space as leader key
vim.g.mapleader = " "

local keymap = vim.keymap -- alias

-- general keymaps, lots of peeps use this, but....
--keymap.set("i", "jk", "<ESC>")

-- in normal mode clear search
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- in normal mode, when x dont copy to clipboard
keymap.set("n", "x", '"_x')

-- increment keymaps
-- lots of peeps use this, but....
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C+x>")


-- split windows
keymap.set("n", "<leader>sv", "<C-w>v") -- split vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split horizontally
keymap.set("n", "<leader>se", "<C-w>w") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close split windows


keymap.set("n", "<leader>to", ":tabnew<CR>") -- new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

