return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local lualine = require("lualine")
			lualine.setup({
				options = {
					theme = "everforest",
					icon_enabled = true,
				},
			})
		end,
	},
	{
		"stevearc/dressing.nvim",
		event = "VeryLazy",
	},
	{
		"echasnovski/mini.indentscope",
		version = false, -- wait till new 0.7.0 release to put it back on semver
		opts = {
			-- symbol = "?",
			symbol = "|",
			options = { try_as_border = true },
		},
		init = function()
			vim.api.nvim_create_autocmd("FileType", {
				pattern = {
					"alpha",
					"dashboard",
					"fzf",
					"help",
					"lazy",
					"lazyterm",
					"mason",
					"neo-tree",
					"notify",
					"toggleterm",
					"Trouble",
					"trouble",
				},
				callback = function()
					vim.b.miniindentscope_disable = true
				end,
			})
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {
			timeout = 5000,
		},
		config = function()
			require("ibl").setup()
		end,
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		config = function()
			require("noice").setup({
				lsp = {
					override = {
						["vim.lsp.util.convert_input_to_markdown_lines"] = true,
						["vim.lsp.util.stylize_markdown"] = true,
						["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
					},
				},
				presets = {
					bottom_search = true, -- use a classic bottom cmdline for search
					command_palette = true, -- position the cmdline and popupmenu together
					long_message_to_split = true, -- long messages will be sent to a split
					inc_rename = false, -- enables an input dialog for inc-rename.nvim
					lsp_doc_border = false, -- add a border to hover docs and signature help
				},

				-- you can enable a preset for easier configuration
				cmdline = {
					view = "cmdline",
				},
				format = {
					search_down = {
						view = "cmdline",
					},
					search_up = {
						view = "cmdline",
					},
				},
				messages = {
					view_history = "messages",
				},
				views = {
					split = {
						enter = true,
					},
				},
			})
			vim.keymap.set("n", "<leader>nl", function()
				require("noice").cmd("last")
			end)

			vim.keymap.set("n", "<leader>nh", function()
				require("noice").cmd("history")
			end)
		end,
	},
}
