return {
  "Tsuzat/NeoSolarized.nvim",
  style = "dark",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  transparent = true,
  enable_italics = true,
  floats = "dark",
  opts = {
    styles = {
      sidebars = "transparent",
      comments = { italic = true },
      keywords = { italic = true },
      functions = { bold = true },
      variables = {},
      string = { italic = true },
      underline = true, -- true/false; for global underline
      undercurl = true,
    },

    day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
    hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
    dim_inactive = false, -- dims inactive windows
    lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
  },
  config = function()
    vim.cmd([[ colorscheme NeoSolarized ]])
  end,
}
