return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "ibhagwan/fzf-lua",
  },
  config = function()
    require("neogit").setup({
      disable_signs = true,
      graph_style = "unicode",
      kind = "vsplit",
    })
  end,
}
