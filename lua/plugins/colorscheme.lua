return {
  "craftzdog/solarized-osaka.nvim",
  lazy = false,
  priority = 100,
  config = function()
    require("solarized-osaka").setup({
      -- transparent = true,
    })
    vim.cmd([[colorscheme solarized-osaka]])
  end,
}
-- return {
--   "Tsuzat/NeoSolarized.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.cmd([[colorscheme NeoSolarized]])
--   end,
-- }
-- return {
-- "navarasu/onedark.nvim",
-- lazy = false,
-- priority = 100,
-- config = function()
--   vim.cmd([[colorscheme onedark]])
-- end,
-- }
