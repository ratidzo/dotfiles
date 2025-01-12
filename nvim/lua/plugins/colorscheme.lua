return {
  {
    "sainnhe/sonokai",
    lazy = true,
    priority = 1000,
    opts = function()
      vim.g.sonokai_transparent_background = "1"
      vim.g.sonokai_enable_italic = "1"
      vim.g.sonokai_style = "maia"
      vim.cmd.colorscheme("sonokai")
    end,
  },
}
