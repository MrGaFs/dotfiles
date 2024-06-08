vim.g.mapleader = " "
local keymap = vim.keymap

-- keymaps
keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "clear search highlight" })

-- window spliting
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "virtecal split" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "horizontal split" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "make split equal" })
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "close current tab" })

-- tabs
keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "open new tab" })
keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "close current tab" })
keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "next tab" })
keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "previous tab" })
