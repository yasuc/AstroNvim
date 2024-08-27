if false then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
-- Markdown preview
return {
  "iamcco/markdown-preview.nvim",
  ft = { "markdown", "markdown.mdx" },
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  init = function()
    local plugin = require("lazy.core.config").spec.plugins["markdown-preview.nvim"]
    vim.g.mkdp_filetypes = require("lazy.core.plugin").values(plugin, "ft", true)
  end,
  build = function() vim.fn["mkdp#util#install"]() end,
  config = function() vim.cmd [[do FileType]] end,
}
