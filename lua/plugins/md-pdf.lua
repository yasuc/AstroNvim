if false then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE t_h_i_s FILE
return {
  "arminveres/md-pdf.nvim",
  branch = "main", -- you can assume that main is somewhat stable until releases will be made
  lazy = true,
  keys = {
    {
      "<leader>M,",
      function() require("md-pdf").convert_md_to_pdf() end,
      desc = "Markdown to PDF",
    },
  },
  opts = {
    pandoc_user_args = {
      "-t html5",
    },
  },
}
