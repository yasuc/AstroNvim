require("tokyonight").setup {
  transparent = true,
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  },
  on_colors = function() end,
  on_highlights = function() end, -- フィールド名を on_highlights に変更
}
vim.cmd [[colorscheme tokyonight-night]]
