local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = "mobasir.plugins"
require("lazy").setup({
	spec = plugins,
	defaults = {
		lazy = false,
		version = false,
	},
	change_detection = { notify = false },
	checker = { enabled = true, notify = false },
	{ import = "lazyvim.plugins.extras.ui.mini-indentscope" },
	performance = {
		cache = {
			enabled = true,
		},
	},
})
