if false then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map
        -- mappings seen under group name "Buffer"
        ["L"] = {
          function() require("astrocore.buffer").nav(vim.v.count1) end,
          desc = "Next buffer",
        },
        ["H"] = {
          function() require("astrocore.buffer").nav(-vim.v.count1) end,
          desc = "Previous buffer",
        },
      },
    },
  },
}
