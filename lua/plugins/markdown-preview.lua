-- Markdown preview
return {
  "iamcco/markdown-preview.nvim",
  -- cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  keys = {
    {
      "<leader>mp",
      ft = "markdown",
      "<cmd>MarkdownPreviewToggle<cr>",
      desc = "Markdown Preview",
    },
  },
  -- config = function() vim.cmd [[do FileType]] end,
}
