vim.g.clipboard = {
   name = "WslClipboard",
   copy = {
      ["+"] = "clip.exe",
      ["*"] = "clip.exe",
   },
   paste = {
      ["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
      ["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
   },
   cache_enabled = 0,
}

vim.o.lazyredraw = false

vim.api.nvim_create_autocmd("BufWritePre", {
   pattern = "*",
   callback = function(args)
      require("conform").format({ bufnr = args.buf })
   end,
})

vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 30
