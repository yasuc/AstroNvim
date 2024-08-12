if false then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
return { -- override nvim-cmp plugin
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-emoji", -- add cmp source as dependency of cmp
  },
  -- override the options table that is used in the `require("cmp").setup()` call
  opts = function(_, opts)
    -- opts parameter is the default options table
    -- the function is lazy loaded so cmp is able to be required
    local cmp = require "cmp"
    -- modify the sources part of the options table
    opts.sources = cmp.config.sources {
      { name = "nvim_lsp", priority = 1000 },
      { name = "luasnip", priority = 750 },
      { name = "buffer", priority = 500 },
      { name = "path", priority = 250 },
      { name = "emoji", priority = 700 }, -- add new source
    }

    -- opts.mapping = cmp.mapping.preset.insert {
    --   ["CR"] = cmp.mapping.confirm { select = true },
    --   ["<Tab>"] = cmp.mapping(function(fallback)
    --     if cmp.visible() then
    --       local entries = cmp.get_entries()
    --       cmp.select_next_item { behavior = cmp.SelectBehavior.Select }
    --
    --       if #entries == 1 then cmp.confirm() end
    --     else
    --       fallback()
    --     end
    --   end, { "i", "s" }),
    -- }
  end,
}
