return {
	{
		"leoluz/nvim-dap-go",
		ft = "go",
		dependencies = "mfussenegger/nvim-dap",
		config = function()
			require("dap-go").setup({
				dap_configurations = {
					type = "go",
					name = "Debug (Build Flags & Arguments)",
					request = "launch",
					args = require("dap-go").get_arguments,
					buildFlags = require("dap-go").get_build_flags,
				},
			})
		end,
	},
}
