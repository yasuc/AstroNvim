-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

-- browser setup for Markdown Preview
if vim.fn.has "mac" == 1 then
  vim.cmd [[
  function OpenMarkdownPreview (url)
  execute "silent ! open -a Firefox -n --args --new-window " . a:url
  endfunction
  let g:mkdp_browserfunc = 'OpenMarkdownPreview'
]]
elseif vim.fn.has "win64" == 1 then
  vim.cmd [[
  function OpenMarkdownPreview (url)
  execute "silent ! chrome --new-window --app=" . a:url
  endfunction
]]
else
  vim.cmd [[
  function OpenMarkdownPreview (url)
  execute "silent ! chrome --new-window --app=" . a:url
  endfunction
]]
end

vim.g.mkdp_browserfunc = "OpenMarkdownPreview"

require "lazy_setup"
require "polish"
