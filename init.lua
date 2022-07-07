--configs
require('configs.plugins')
require('configs.keymappings')
require('configs.options')
require('configs.colorscheme')
require('bufferline').setup {}
require('lualine').setup {}

-- ide features
require('ide.autopairs')
require('ide.nvim-cmp')
require('ide.treesitter')
require('ide.telescope')
require('ide.nvim-tree')
require('ide.toggleterm')
require('ide.colorizer')

-- lsp and dubugger
require('nvim-lsp-installer').setup {}
require('lsp')
require('debug.dap')
require('debug.dap-virtual-text')

-- note taking
require('notes.neorg')
