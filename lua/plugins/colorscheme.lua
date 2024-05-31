return {
  "sainnhe/everforest",
  lazy = false,
  priority = 1000,
  config = function()
    local ui = vim.g
    ui.everforest_enable_italic = 1
    ui.everforest_transparent_background = 1
    ui.everforest_better_performance = 1
    ui.everforest_ui_contrast = "high"
    ui.everforest_diagnostic_text_highlight = 1
    ui.everforest_current_word = "underline"
    ui.everforest_background = "hard"
    ui.everforest_float_style = "dim"
    ui.everforest_diagnostic_line_highlight = 1
    vim.cmd.colorscheme("everforest")
  end,
}
