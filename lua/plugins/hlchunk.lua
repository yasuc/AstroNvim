if false then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
return {
  {
    "shellRaining/hlchunk.nvim",
    event = { "UIEnter" },
    config = function()
      require("hlchunk").setup {
        indent = {
          chars = { "│", "¦", "┆", "┊" }, -- more code can be found in https://unicodeplus.com/

          style = {
            "#8B00FF",
          },
        },
        blank = {
          enable = false,
        },
      }
    end,
  },
}
