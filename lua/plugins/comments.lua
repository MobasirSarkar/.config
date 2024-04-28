return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  lazy = false,
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    local comment = require("Comment")
    local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")
    comment.setup({
      ignore = "nil",
      toggler = ts_context_commentstring,
      padding = true,
      pre_hook = ts_context_commentstring.create_pre_hook(),
      sticky = true,
      opleader = {
        ---Line-comment keymap
        line = "gc",
        ---Block-comment keymap
        block = "gb",
      },
      ---LHS of extra mappings
      extra = {
        ---Add comment on the line above
        above = "gcO",
        ---Add comment on the line below
        below = "gco",
        ---Add comment at the end of line
        eol = "gcA",
      },
      mappings = {
        ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
        basic = true,
        -- -Extra mapping; `gco`, `gcO`, `gcA`
        extra = true,
      },
      post_hook = ts_context_commentstring.create_pre_hook(),
    })
  end,
}
