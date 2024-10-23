vim.opt.guicursor = ""
vim.scriptencoding = "utf-8"
vim.opt.nu = true
vim.opt.relativenumber = false


vim.opt.ruler = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.showtabline=5
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
-- vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.clipboard = "unnamed"
vim.opt.colorcolumn = "80"

--For windows systems
if(vim.loop.os_uname().sysname == "Windows_NT")
then
vim.opt.shell='C:/Windows/System32/WindowsPowerShell/v1.0/powershell.exe'
else
--Otherwise using Linux
vim.opt.shell='/bin/zsh'    
end

require'lspconfig'.pyright.setup{}
