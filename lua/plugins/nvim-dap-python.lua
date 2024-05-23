if false then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
return {
  {
    "mfussenegger/nvim-dap-python",
    config = function() require("dap-python").setup() end,
  },
}
