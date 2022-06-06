local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

-- explorer
keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', opts)

-- system clipboard integration
keymap('n', '<Leader>y', '"+y', opts)
keymap('n', '<Leader>p', '"+p', opts)
keymap('n', '<Leader>P', '"+P', opts)

-- create a line break above and below the current line
keymap('n', 'zk', 'O<Esc>j', opts)
keymap('n', 'zj', 'o<Esc>k', opts)

-- better window movement
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
keymap('n', '<C-Up>', ':resize +2<CR>', opts)
keymap('n', '<C-Down>', ':resize -2<CR>', opts)
keymap('n', '<C-Left>', ':vertical resize -2<CR>', opts)
keymap('n', '<C-Right>', ':vertical resize +2<CR>', opts)


-- Navigate Buffers
keymap('n', '<Tab>', ':bnext<CR>', opts)
keymap('n', '<S-Tab>', ':bprev<CR>', opts)


-- Move text up and down
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Keep copied text on replacing text
keymap("v", "p", '"_dP', opts)
