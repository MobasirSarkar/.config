return {
  "folke/trouble.nvim",
  branch = "dev",
  keys = {
    { "<C-t>",      "<cmd>Trouble diagnostics toggle<cr>",              desc = "Diagnostics (Trouble)" },
    { "<leader>x",  "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics (Trouble)" },
    { "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>",      desc = "Symbols (Trouble)" },
    {
      "<leader>cS",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      desc = "LSP references/definitions/... (Trouble)",
    },
    { "<leader>tl", "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Trouble)" },
    { "<leader>tq", "<cmd>Trouble qflist toggle<cr>",  desc = "Quickfix List (Trouble)" },
    {
      "[q",
      function()
        if require("trouble").is_open() then
          require("trouble").prev({ skip_groups = true, jump = true })
        else
          local ok, err = pcall(vim.cmd.cprev)
          if not ok then
            vim.notify(err, vim.log.levels.ERROR)
          end
        end
      end,
      desc = "Previous Trouble/Quickfix Item",
    },
    opts = function(_, opts)
      local open_with_trouble = require("trouble.sources.telescope").open
      return vim.tbl_deep_extend("force", opts, {
        defaults = {
          mappings = {
            i = {
              ["<leader>t"] = open_with_trouble,
              ["<a-t>"] = open_with_trouble,
            },
          },
        },
      })
    end
  },
}
