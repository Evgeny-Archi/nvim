vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Explore)
vim.keymap.set("n", "<leader>le", vim.cmd.Lexplore)
vim.keymap.set("n", "<leader>te", vim.cmd.Texplore)
vim.cmd("nmap <leader>s :w<cr>")
vim.cmd("nmap <leader>q :q<cr>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mxJ`z")
-- cursor always in middle of screen when <C-d/u>
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Do not yank with x
vim.keymap.set("n", "x", '"_x')
-- paste selected text without rewriting clipboard
vim.keymap.set("x", "<leader>p", '"_dP')
-- yank to system clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')
-- Splitting windows
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { silent = true })
vim.keymap.set('', '<leader>sh', '<C-w>h')
vim.keymap.set('', '<leader>sl', '<C-w>l')
vim.keymap.set('', '<leader>sj', '<C-w>j')
vim.keymap.set('', '<leader>sk', '<C-w>k')
-- Tabs
-- gt gT split tab

-- LSP
-- gr Goto Reference
-- gd Goto definition
-- K var documentation
vim.keymap.set({ "n", "v" }, "<leader>lca", vim.lsp.buf.code_action, { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<leader>lrr", vim.lsp.buf.references, { noremap = true, silent = true })
vim.keymap.set({ "n", "v" }, "<leader>lrn", vim.lsp.buf.rename, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>fa", function()
  vim.cmd(":EslintFixAll")
end, { noremap = true, silent = true })

-- Diagnostic
vim.keymap.set("n", "<leader>de", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>dq", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Netrw keybindings
local function netrw_mappings()
  local bind = function(lhs, rhs)
    vim.keymap.set("n", lhs, rhs, { remap = true, buffer = true })
  end

  bind("ff", ":!touch ") -- create file
  bind("fd", ":!mkdir -p ") -- create folder
  bind("fm", ":!mv ") -- move/rename
  bind("fc", ":!cp -r ") -- copy
  -- bind("fd", ":!rm -r ") -- delete
end
local user_cmds = vim.api.nvim_create_augroup("user_cmds", { clear = true })
vim.api.nvim_create_autocmd("filetype", {
  pattern = "netrw",
  group = user_cmds,
  desc = "Keybibdibgs for netrw",
  callback = netrw_mappings,
})

-- Undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Trouble
vim.keymap.set("n", "<leader>xx", function()
  require("trouble").toggle()
end)
vim.keymap.set("n", "<leader>xw", function()
  require("trouble").toggle("workspace_diagnostics")
end)
vim.keymap.set("n", "<leader>xd", function()
  require("trouble").toggle("document_diagnostics")
end)
vim.keymap.set("n", "<leader>xq", function()
  require("trouble").toggle("quickfix")
end)
vim.keymap.set("n", "<leader>xl", function()
  require("trouble").toggle("loclist")
end)
vim.keymap.set("n", "gR", function()
  require("trouble").toggle("lsp_references")
end)

-- A move to end line
-- _ move to star line
-- <C-c> exit to normal mod
-- D delete right to line
-- P insert copied text before line
-- <C-o> go back
-- * jump to same variable
