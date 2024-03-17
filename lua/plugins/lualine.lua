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
        lualine_a = { {
          "mode",
          fmt = function(str)
            return str:sub(1, 1)
          end,
        } },
        lualine_b = { "branch", "diff" },
        lualine_c = { "diagnostics", { "filename", path = 1 } },
        lualine_x = { {
          require("lsp-progress").progress,
        }, "encoding", "fileformat", "filesize" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    })
  end,
}
