local keymap = vim.keymap
local opts = { noremap = true, silent = true}

-- Increment/decrement
keymap.set("n", "<C-+>", "<C-a>")
keymap.set("n", "<C-->", "<C-x>")

--select all
keymap.set("n", "<C-a>", "gg<S-v>G")


--tab
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
