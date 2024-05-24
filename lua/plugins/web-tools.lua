return {
  "ray-x/web-tools.nvim",
  name = "web-tools", -- Only needed if you have another plugin named markdown.nvim
  config = function()
    require("web-tools").setup {
      keymaps = {
        rename = nil, -- by default use same setup of lspconfig
        repeat_rename = "_", -- . to repeat
      },
    }
  end,
}
