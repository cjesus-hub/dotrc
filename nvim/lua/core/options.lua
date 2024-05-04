local opt = vim.opt -- make things clear

-- line number, makes fancy numbering
opt.relativenumber = true
opt.number = true

-- tabs and indents, 4 space
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

--linewrapping
opt.wrap = false

--search settings, 
--	ignore case if lower case, 
--	if using mix upper and lower cases enforce case
opt.ignorecase = true
opt.smartcase = true

-- cursor line, usefull to have a line in the current line
opt.cursorline = true

--appearence
opt.termguicolors =  true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace =  "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright  = true
opt.splitbelow  = true

-- consider "-" as part of a word
opt.iskeyword:append("-") 

