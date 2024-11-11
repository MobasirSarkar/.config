return {

	{
		"numToStr/Comment.nvim",
		dependencies = {
			"JoosepAlviste/nvim-ts-context-commentstring",
		},
		opts = {},
		config = function()
			require("Comment").setup()
			require("ts_context_commentstring").setup({
				enable_autocmd = false,
			})
		end,
	},
}
