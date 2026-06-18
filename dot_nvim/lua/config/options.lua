-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

-- Disable Language providers
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

vim.opt.scrolloff = 16

vim.filetype.add({
  extension = {
    xaml = "xml",
  },
})

if vim.fn.has("win32") == 1 then
  vim.opt.shell = "pwsh.exe"
end
