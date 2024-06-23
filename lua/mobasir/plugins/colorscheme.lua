return {
	{ --"sainnhe/everforest",
		-- 	--lazy = false,
		-- 	--priority = 1000,
		-- 	--config = function()
		-- 	--local ui = vim.g
		-- 	--
		-- 	--ui.everforest_enable_italic = 1
		-- 	--ui.everforest_transparent_background = 2
		-- 	--ui.everforest_better_performance = 1
		-- 	--ui.everforest_ui_contrast = "high"
		-- 	--ui.everforest_diagnostic_text_highlight = 1
		-- 	--ui.everforest_current_word = "underline"
		-- 	--ui.everforest_background = "hard"
		-- 	--ui.everforest_float_style = "dim"
		-- 	--ui.everforest_diagnostic_line_highlight = 1
		-- 	--vim.cmd([[colorscheme everforest]])
		--end,
	},
	{
		{
			"folke/tokyonight.nvim",
			lazy = false,
			priority = 1000,
			opts = {},
			config = function()
				require("tokyonight").setup({
					style = "dark",
					transparent = true,
					terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
					styles = {
						comments = { italic = true },
						keywords = { italic = true },
						functions = {},
						variables = {},
						sidebars = "transparent", -- style for sidebars, see below
						floats = "dark", -- style for floating windows
					},
					sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
					day_brightness = 0.2, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
					hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
					dim_inactive = false, -- dims inactive windows
					lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
				})
				vim.cmd([[colorscheme tokyonight]])
			end,
		},
	},
}
