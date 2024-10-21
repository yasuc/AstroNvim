if false then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {},
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {},
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {

      -- first key is the mode
      i = {
        -- Insert --
        -- Press jk fast to exit insert mode
        -- ["jk"] = { "<ESC>", noremap = true, silent = true },

        -- insert mode での移動
        ["<C-E>"] = { "<END>", noremap = true, silent = true },
        ["<C-A>"] = { "<HOME>", noremap = true, silent = true },
        ["<C-N>"] = { "<Down>", noremap = true, silent = true },
        ["<C-P>"] = { "<Up>", noremap = true, silent = true },
        ["<C-B>"] = { "<Left>", noremap = true, silent = true },
        ["<C-F>"] = { "<Right>", noremap = true, silent = true },
      },

      n = {
        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        --
        -- for Aerial
        ["<Leader>a"] = { desc = "󰠶 Aerial" },
        ["<Leader>at"] = { "<cmd>AerialToggle!<CR>", silent = true, desc = "Aerial Toggle" },
        ["<Leader>an"] = { "<cmd>AerialNavToggle<CR>", silent = true, desc = "Aerial Nav Toggle" },
        ["<Leader>af"] = { "<cmd>AerialToggle! float<CR>", silent = true, desc = "Aerial Toggle" },

        -- for lsp_signature
        ["<C-k>"] = {
          function() require("lsp_signature").toggle_float_win() end,
          silent = true,
          noremap = true,
          desc = "toggle signature",
        },
        ["<Leader>k"] = {
          function() vim.lsp.buf.signature_help() end,
          silent = true,
          noremap = true,
          desc = "toggle signature",
        },

        ["<Leader>m"] = { desc = " Markdown" },
        ["<leader>mp"] = {
          "<cmd>MarkdownPreviewToggle<cr>",
          desc = "Markdown Preview",
        },

        -- for ToggleTerm
        ["<Space>,"] = { ":ToggleTerm size=10<CR>", silent = true },
        ["<Space>."] = { ":ToggleTerm direction=vertical size=80<CR>", silent = true },

        -- clear search highlights
        ["<leader>nh"] = { ":nohl<CR>", silent = true, desc = "Clear search highlights" },
        -- ESC*2 でハイライトやめる
        ["<Esc><Esc>"] = { ":<C-u>set nohlsearch<Return>", silent = true, desc = "Stop highlight" },

        -- 文字コードの変更
        ["<Leader>U"] = { desc = " Convert char code" },
        ["<leader>Uu"] = { ":e ++enc=utf-8<Return>", silent = true, desc = "convert to utf-8" },
        ["<leader>Us"] = { ":e ++enc=sjis<Return>", silent = true, desc = "convert to sjis" },

        -- Jaqによる実行
        [",r"] = { ":Jaq quickfix<Return>", silent = true, desc = "Jaq quickfix" },

        -- Telescope-file-browser
        [",ff"] = { ":Telescope find_files<Return>", silent = true, desc = "Telescope find_files" },
        [",fg"] = { ":Telescope live_grep<Return>", silent = true, desc = "Telescope live_grep" },

        -- rest-nvim
        ["<Leader>rn"] = { ":Rest run<space>", desc = "Run request name" },
        ["<Leader>rhn"] = { ":hor Rest run<space>", desc = "Horizontal Run request name" },
        ["<Leader>rhr"] = { ":hor Rest run<Return>", desc = "Horizontal Run request under the cursor" },
      },
      t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
        ["<ESC>"] = { [[<C-\><C-n>]], silent = true },
      },
    },
  },
}
