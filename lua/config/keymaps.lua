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

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- ESC*2 でハイライトやめる
keymap.set("n", "<Esc><Esc>", ":<C-u>set nohlsearch<Return>", { desc = "Stop highlight" })

-- 文字コードの変更
keymap.set("n", "<leader>mu", ":e ++enc=utf-8<Return>", { desc = "convert to utf-8" })
keymap.set("n", "<leader>ms", ":e ++enc=sjis<Return>", { desc = "convert to sjis" })

-- Insert --
-- Press jk fast to exit insert mode
keymap.set("i", "jk", "<ESC>", opts)

-- insert mode での移動
keymap.set("i", "<C-e>", "<END>", opts)
keymap.set("i", "<C-a>", "<HOME>", opts)
keymap.set("i", "<C-n>", "<Down>", opts)
keymap.set("i", "<C-p>", "<Up>", opts)
keymap.set("i", "<C-b>", "<Left>", opts)
keymap.set("i", "<C-f>", "<Right>", opts)

-- Telescope-file-browser
keymap.set("n", ",ff", ":Telescope find_files<Return>", opts)
keymap.set("n", ",fg", ":Telescope live_grep<Return>", opts)
