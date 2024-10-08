local M = {}

M.cmp = {
  i = {
    ["<C-h>"] = {
      function()
        if require("cmp").visible() then
          require("cmp").abort()
        end
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", false)
      end,
      "Close completion menu and enter normal mode",
    },
  },
}

return M
