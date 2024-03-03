return {
  "nvim-lualine/lualine.nvim",
  lazy = false,
  priority = 90,
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = false,
        theme = "jellybeans",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff" },
        lualine_c = { { "filename", path = 1 }, "diagnostics" },
        lualine_x = { {
          require("lsp-progress").progress,
        }, "encoding", "fileformat" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    })
  end,
}
