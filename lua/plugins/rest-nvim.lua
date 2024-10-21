if false then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
return {
  "rest-nvim/rest.nvim",
  config = function()
    vim.g.rest_nvim = {
      custom_dynamic_variables = {
        randomInt10 = function() return tostring(math.random(1, 10)) end,
      },
    }
  end,
}
