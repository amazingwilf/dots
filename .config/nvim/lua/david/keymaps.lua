vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("i", "<C-c>", "<ESC>", { desc = "Exit insert mode with Control-c" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) 

keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to lower split" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to upper split" })
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })

keymap.set("n", "<M-j>", ":resize -2<CR>", { desc = "Shift split to left" })
keymap.set("n", "<M-k>", ":resize +2<CR>", { desc = "Shift split to right" })
keymap.set("n", "<M-l>", ":vertical resize -2<CR>", { desc = "Shift split down" })
keymap.set("n", "<M-h>", ":vertical resize +2<CR>", { desc = "Shift split up" })
keymap.set("n", "<M-=>", "<C-w>=", { desc = "Make splits equal size" })

keymap.set("n", "<C-s>", ":w<CR>", { desc = "Save current buffer" })
keymap.set("n", "<C-q>", ":wq!<CR>", { desc = "Save current buffer and exit" })

keymap.set("v", "<", "<gv", { desc = "Decrease block indent" })
keymap.set("v", ">", ">gv", { desc = "Increase block indent" })




