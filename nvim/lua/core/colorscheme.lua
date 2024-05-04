vim.o.background = "dark" -- or "light" for light mode

-- import colorscheme, same as bellow but safer, sending a status msg if fail 
-- vim.cmd([[colorscheme gruvbox]])
local status, _ = pcall(vim.cmd, "colorscheme gruvbox")
if not status then 
	print("colorscheme not found!!")
	return
end
