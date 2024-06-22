return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require("neo-tree").setup({
      window = {
        position = "float",
        width = 50,
        height = 30
      },
    })
    vim.api.nvim_set_keymap("n","<C-e>",":Neotree toggle<CR>",{noremap = true , silent = true})
  end,
}
