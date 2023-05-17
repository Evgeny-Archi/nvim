require'window-picker'.setup({
    autoselect_one = false,
    include_current = false,
    filter_rules = {
        bo = {
            filetype = {'neo-tree', "neo-tree-popup", "notify"},
            buftype = {'terminal', "quickfix"}
        }
    },
    other_win_hl_color = '#e35e4f'
})
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

vim.fn.sign_define("DiagnosticSignError",
                   {text = " ", texthl = "DiagnosticSignError"})
vim.fn.sign_define("DiagnosticSignWarn",
                   {text = " ", texthl = "DiagnosticSignWarn"})
vim.fn.sign_define("DiagnosticSignInfo",
                   {text = " ", texthl = "DiagnosticSignInfo"})
vim.fn.sign_define("DiagnosticSignHint",
                   {text = "", texthl = "DiagnosticSignHint"})

require("neo-tree").setup({
  close_if_last_window = true,
  popup_border_style = "NC",
  default_component_configs = {
    indent = {
      with_markers = false,
      padding = 2,
      indent_marker = "",
      last_indent_marker = "",
      with_expanders = true,
    },
    icon = {
      folder_closed = "",
      folder_open = "",
      folder_empty = "",
    },
    git_status = {
      symbols = {
        added = "✚", -- or "✚", but this is redundant info if you use git_status_colors on the name
        modified  = "", -- or "", but this is redundant info if you use git_status_colors on the name
        deleted   = "",-- this can only be used in the git_status source
        renamed   = "",-- this can only be used in the git_status source
        untracked = "",
        ignored   = "",
        unstaged  = "✗",
        staged    = "✓",
        conflict  = "",
        },
    }
  },
  window = {
    position = "float",
    mappings = {
      ["o"] = "open",
    },
  },
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = false,
      hide_by_name = {
        "node_modules"
      },
    }
  },
  hijack_netrw_behavior = "open_current",
})
