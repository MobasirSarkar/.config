return {
  --[[  "folke/tokyonight.nvim", ]]
  "Tsuzat/NeoSolarized.nvim",
  --"sekke276/dark_flat.nvim",
  style = "dark",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  transparent = true,
  enable_italics = true,
  opts = {
    transparent = true,
    sytles = {
      sidebars = "transparent",
      floats = "transparent",
      comments = { italic = true },
      keywords = { italic = true },
      functions = { bold = true },
      variables = {},
      string = { italic = true },
      underline = true, -- true/false; for global underline
    },
  },
  config = function()
    vim.cmd([[ colorscheme NeoSolarized ]])
  end,
}
