vim.g.mapleader = " "

local km = vim.keymap

km.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

km.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers in normal mode
km.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
km.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window management
km.set("n", "<leader>sv", "<C-w>v", { desc = "Split windows vertically" })
km.set("n", "<leader>sh", "<C-w>s", { desc = "Split windows horizontally" })
km.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
km.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current splitted window" })

-- tab management
km.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
km.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
km.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to nex tab" })
km.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previoud tab" })
km.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- lazy plugins
km.set("n", "<leader>L", "<cmd>Lazy<CR>", { desc = "Open Lazy UI" })

-- terminal
km.set("n", "<leader>te", ":ToggleTerm<CR>", { desc = "Toggle Terminal" })
km.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Close Terminal" })
