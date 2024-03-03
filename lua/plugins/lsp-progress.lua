return {
  "linrongbin16/lsp-progress.nvim",
  config = function()
    require("lsp-progress").setup({
      format = function(client_messages)
        if #client_messages > 0 then
          return table.concat(client_messages, " ")
        end
        if #vim.lsp.get_active_clients() > 0 then
	local names = {}
          for k, client in ipairs(vim.lsp.get_active_clients()) do
            if client.name ~= "" then
              names[k] = client.name
            end
          end
	return table.concat(names, ", ")
        end
        return ""
      end,
    })
  end,
}
