if false then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
return {
  "mrjones2014/smart-splits.nvim",
  event = "VeryLazy", -- load on very lazy for mux detection
  opts = { ignored_filetypes = { "nofile", "quickfix", "qf", "prompt" }, ignored_buftypes = { "nofile" } },
}
