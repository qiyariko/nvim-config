require("config.lazy")
require("mappings")
require("mappings_telescope")

vim.cmd( "syntax off" )

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.clipboard = "unnamedplus"
vim.opt.cursorline = true

vim.filetype.add({ extension = { h = "c" } })

