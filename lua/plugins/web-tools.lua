if false then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
return {
  {
    "ray-x/web-tools.nvim",
    config = function()
      require("hlchunk").setup {
        keymaps = {
          rename = nil, -- by default use same setup of lspconfig
          repeat_rename = ".", -- . to repeat
        },
      }
    end,
  },
}
