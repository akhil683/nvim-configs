-- NOTE: These are my customzied keymaps. You can see the default keymaps below :
-- Default keymaps: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local harpoon = require("harpoon")
harpoon:setup()

keymap.set("i", "kj", "<Esc>", opts)
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Visual Mode: moving lines
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- search word with cursor in middle
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Save file and quit
keymap.set("n", "<Leader>w", ":update<Return>", opts)
keymap.set("n", "<Leader>q", ":quit<Return>", opts)
keymap.set("n", "<Leader>Q", ":qa<Return>", opts)

keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

keymap.set("n", "<C-a>", "gg<S-v>G")
keymap.set("n", "<C-m>", "<C-i>", opts)

-- Tabs
keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
keymap.set("n", "tw", ":tabclose<Return>", opts)

-- split screen
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- Set Harpoon
keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end)
keymap.set("n", "<leader>hw", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)
keymap.set("n", "he", function()
  harpoon:list():prev()
end)
keymap.set("n", "ht", function()
  harpoon:list():next()
end)
