return {
   "williamboman/mason.nvim",
   dependencies = {
      "williamboman/mason-lspconfig.nvim",
   },

   config = function()
      require("mason").setup()
      end
}
