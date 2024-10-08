local plugins = {
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local cmp = require("./configs/cmp.lua")
      return {
        mapping = {
          ["<Tab>"] = cmp.mapping.confirm({ select = true }),
          ["<C-n>"] = cmp.mapping.select_next_item(),
          ["<C-p>"] = cmp.mapping.select_prev_item(),
        },
        completion = {
          completeopt = "menu,menuone,noselect"
        },
        preselect = cmp.PreselectMode.None,
      }
    end,
  },
  -- Other plugins...
}

return plugins
