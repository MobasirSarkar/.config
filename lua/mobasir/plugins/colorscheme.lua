return {
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
		end,
	},
	{
		"glepnir/oceanic-material",
		lazy = false,
		priority = 1000,
		config = function()
			local ui = vim.g
			ui.oceanic_material_allow_italic = 1
			ui.oceanic_material_allow_underline = 1
			ui.oceanic_material_transparent_background = 1
			ui.oceanic_material_background = "ocean"
			ui.oceanic_material_allow_undercurl = 1
			ui.oceanic_material_allow_bold = 1
		end,
	},
	{
		"Tsuzat/NeoSolarized.nvim",
		lazy = false,
		priority = 1000,
		options = {
			style = "dark",
			transparent = true,
			enable_italics = true,
			styles = {
				comments = { italic = true },
				keywords = { bold = true },
				functions = { italic = true },
				variables = {},
				string = { italic = true },
				underline = true,
				undercurl = true,
			},
		},
		config = function()
			require("NeoSolarized").setup()
		end,
	},
	{
		"neanias/everforest-nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("everforest").setup({
				background = "hard",
				transparent_background_level = 1,
				italics = true,
				ui_contrast = "high",
				diagnostic_virtual_text = "colored",
			})
			vim.cmd([[colorscheme everforest]])
		end,
	},
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			style = "dark",
			transparent = true,
			enable_italics = true,
			styles = {
				comments = { italic = true },
				keywords = { bold = true },
				functions = { italic = true },
				variables = {},
				string = { italic = true },
				underline = true,
				undercurl = true,
			},
		},
		config = function()
			require("solarized-osaka").setup()
		end,
	},
}
