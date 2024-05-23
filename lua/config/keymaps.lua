if false then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Modes
--   normal_mode = 'n',
--   insert_mode = 'i',
--   visual_mode = 'v',
--   visual_block_mode = 'x',
--   term_mode = 't',
--   command_mode = 'c',

-- set leader key to space
local opts = { noremap = true, silent = true }

-- vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- General Keymaps -------------------

-- Insert --
-- Press jk fast to exit insert mode
keymap.set("i", "jk", "<ESC>", opts)

-- insert mode での移動
keymap.set("i", "<C-E>", "<END>", opts)
keymap.set("i", "<C-A>", "<HOME>", opts)
keymap.set("i", "<C-N>", "<Down>", opts)
keymap.set("i", "<C-P>", "<Up>", opts)
keymap.set("i", "<C-B>", "<Left>", opts)
keymap.set("i", "<C-F>", "<Right>", opts)

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { silent = true, desc = "Clear search highlights" })

-- ESC*2 でハイライトやめる
keymap.set("n", "<Esc><Esc>", ":<C-u>set nohlsearch<Return>", { silent = true, desc = "Stop highlight" })

-- 文字コードの変更
keymap.set("n", "<leader>mu", ":e ++enc=utf-8<Return>", { silent = true, desc = "convert to utf-8" })
keymap.set("n", "<leader>ms", ":e ++enc=sjis<Return>", { silent = true, desc = "convert to sjis" })

-- Jaqによる実行
keymap.set("n", ",r", ":Jaq quickfix<Return>", { silent = true, desc = "Jaq quickfix" })

-- Telescope-file-browser
keymap.set("n", ",ff", ":Telescope find_files<Return>", { silent = true, desc = "Telescope find_files" })
keymap.set("n", ",fg", ":Telescope live_grep<Return>", { silent = true, desc = "Telescope live_grep" })
