local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save file and quit
keymap.set("n", "<C-s>", ":update<Return>", opts)
keymap.set("n", "<C-q>", ":quit<Return>", opts)

-- File explorer with NvimTree
keymap.set("n", "<C-F>", ":NvimTreeToggle<Return>", opts)

keymap.set("n", "<leader>y", '"+y', opts)
keymap.set("v", "<leader>Y", '"+Y', opts) -- yank line

-- Delete into system clipboard
keymap.set({ "n", "v" }, "<leader>d", '"+d') -- delete motion
keymap.set({ "n", "v" }, "<leader>D", '"+D') -- delete line

-- Resize with arrows
keymap.set({ "n", "i" }, "<C-Up>", ":resize +2<CR>", opts)
keymap.set({ "n", "i" }, "<C-Down>", ":resize -2<CR>", opts)
keymap.set({ "n", "i" }, "<C-Left>", ":vertical resize -2<CR>", opts)
keymap.set({ "n", "i" }, "<C-Right>", ":vertical resize +2<CR>", opts)

-- Repeat the current line down with Ctrl+Alt+DownArrow
vim.api.nvim_set_keymap("n", "<C-M-S-Down>", ":t.<CR>", { noremap = true, silent = true })

-- Repeat the current line up with Ctrl+Alt+UpArrow
vim.api.nvim_set_keymap("n", "<C-M-S-Up>", ":t-1<CR>", { noremap = true, silent = true })

-- Map Ctrl+X to exit insert mode
vim.api.nvim_set_keymap("i", "<C-x>", "<Esc>", { noremap = true, silent = true })

-- Toggle Hidden Files In nvim-tree
vim.api.nvim_set_keymap(
  "n",
  "<C-i>",
  ":lua require('nvim-tree.api').tree.toggle_hidden_filter()<CR>",
  { noremap = true, silent = true }
)

-- Tabs
-- keymap.set("n", "te", ":tabedit")
-- keymap.set("n", "<tab>", ":tabnext<Return>", opts)
-- keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- keymap.set("n", "tw", ":tabclose<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Resize window
keymap.set("n", "<C-S-h>", "<C-w><")
keymap.set("n", "<C-S-l>", "<C-w>>")
keymap.set("n", "<C-S-k>", "<C-w>+")
keymap.set("n", "<C-S-j>", "<C-w>-")

--keymap.set("n", "<leader>ff", "Telescope find_files hidden=true<Return>", opts)
-- Diagnostics
-- keymap.set(cope find_files hidden=true
-- n", "<C-j>", , opts)
