-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- In your init.lua (for Lua configuration)
local map = LazyVim.safe_keymap_set

map("n", "<C-p>", "gcc", { noremap = true, silent = true, desc = "Comment out a line" })

