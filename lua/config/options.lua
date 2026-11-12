-- Options are automatically loaded before lazy.nvim startup.
require("config.remote_clipboard").setup()

-- Capacidades de LSP: file-watching habilitado (ver config/lsp.lua).
require("config.lsp")

vim.opt.relativenumber = true
vim.g.autoformat = false
vim.opt.wrap = true
