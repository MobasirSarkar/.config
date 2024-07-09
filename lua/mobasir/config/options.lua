local opts = vim.opt

opts.clipboard:append("unnamedplus")

opts.nu = true
opts.relativenumber = true

opts.autoindent = true

opts.tabstop = 3
opts.shiftwidth = 3
opts.softtabstop = 3
opts.expandtab = true
opts.smarttab = true
opts.background = "dark"

opts.hlsearch = false
opts.incsearch = true

opts.ignorecase = true
opts.smartcase = true

opts.lazyredraw = true
opts.linebreak = true
opts.wrap = false

opts.laststatus = 2
opts.ruler = true
opts.mouse = "a"

opts.title = true
opts.cursorline = true
opts.history = 1000

opts.spell = true
opts.signcolumn = "yes"

opts.hidden = true

opts.backspace = { "start", "eol", "indent" }
opts.scrolloff = 8
opts.termguicolors = true

opts.fillchars = { eob = " " }

opts.swapfile = false
