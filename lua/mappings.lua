-- important keymaps: D / LS / BP / BN

-- basic keymaps
--vim.api.nvim_set_keymap("n", "W", "<cmd> :w <CR>", {noremap = true, silent = true })
--vim.api.nvim_set_keymap("n", "Q", "<cmd> :q <CR>", {noremap = true, silent = true })
--vim.api.nvim_set_keymap("n", "QE", "<cmd> :q! <CR>", {noremap = true, silent = true })

-- Lazy menu
--vim.api.nvim_set_keymap("n", "LA", "<cmd> :Lazy <CR>", {noremap = true })

-- declaration && definition
vim.api.nvim_set_keymap("n", "D", "<cmd>lua vim.lsp.buf.declaration()<CR>", {noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "DF", "<cmd>lua vim.lsp.definition()<CR>", {noremap = true, silent = true })

-- lsp enable
vim.api.nvim_set_keymap("n", "LS", "<cmd> :lsp enable <CR>", {noremap = true, silent = true })

-- past file in buffer(buffer past) / next file in buffer(buffer next)
vim.api.nvim_set_keymap("n", "BP", "<cmd> :bp <CR>", {noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "BN", "<cmd> :bn <CR>", {noremap = true, silent = true })
