vim.api.nvim_create_augroup("lualine_augroup", { clear = true })
vim.api.nvim_create_autocmd("User", {
  group = "lualine_augroup",
  pattern = "LspProgressStatusUpdated",
  callback = require("lualine").refresh,
})
vim.g.netrw_keepdir = 0
vim.g.netrw_banner = 0 -- <I> to show banner
vim.g.netrw_winsize= "20"
vim.g.netrw_localcopydircmd = "cp -r"
