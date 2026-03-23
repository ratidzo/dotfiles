vim.g.mapleader = " "
require("config.lazy")
require("config.keymaps")
require("config.options")

require('nvim-treesitter').install {'c', 'rust', 'javascript', 'typescript', 'jsx', 'tsx', 'python' }


vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])


-- disable auto insert of comment leaders
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove({ "r", "o" })
  end,
})

