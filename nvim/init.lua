vim.g.mapleader = " "
require("config.lazy")
require("config.keymaps")
require("config.options")

require('nvim-treesitter').install {'c', 'rust', 'javascript', 'typescript', 'jsx', 'tsx', 'python' }

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])


