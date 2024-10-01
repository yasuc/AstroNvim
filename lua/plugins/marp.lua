if false then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
return {
  "mpas/marp-nvim",
  config = function()
    require("marp").setup {
      port = 8080,
      wait_for_response_timeout = 30,
      wait_for_response_delay = 1,
    }
  end,
}
