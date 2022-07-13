-- help :options

local options = {
	number = true, 						     -- displays nubmers
	relativenumber = true,					 -- relativenumber display
	ignorecase = true,						 -- ignorecase in search patterns
	completeopt = { "menuone", "noselect" }, -- mostly just for cmp
	smartcase = true,						 -- smartcase in search patterns
	background = "dark",					 -- set nvim background to dark
	hlsearch = false,						 -- search highlight
	tabstop = 4,							 -- tab acts as 4 spaces
	shiftwidth = 4,						     -- number of spaces for each indentation
	expandtab = true,
	cursorline = false,						 -- highlight current line vertically
	hidden = true,							 -- enalbe hiding buffers
	termguicolors = true,					 -- show actual colours
	laststatus = 3,							 -- only one status line
	-- cmdheight = 2,							 -- show more spaces for commands
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

-- vim.cmd [[set colorcolumn=+80]]			 -- colorcolumn does not work
