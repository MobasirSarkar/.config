return {
	"saghen/blink.cmp",
	dependencies = "rafamadriz/friendly-snippets",

	lazy = false,
	opts = {
		keymap = { preset = "default" },
		appereance = {
			use_nvim_cmp_as_default = true,
		},
		signature = { enabled = true },
		sources = {
			default = { "lsp", "path", "luasnip", "buffer" },
		},
		completion = {
			menu = {
				draw = {
					columns = { { "kind_icon" }, { "label", "label_description", gap = 2 } },
				},
			},
		},
	},
}
