require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

local opts = { noremap = true, silent = true }
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "<C-h>", "<ESC>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "gd", "<Cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
map("n", "gr", "<Cmd>lua vim.lsp.buf.references()<CR>", opts)
map("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
-- Keybinding for renaming symbols_to_items
map("n", "rn", "<Cmd>lua vim.lsp.buf.rename()<CR>", opts)
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
map('i', '<C-BS>', '<C-W>', opts)
map("n", "J", "mzJ`z")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("x", "<leader>p", '"_dP')
map("n", "<leader>y", '"+y')
map("v", "<leader>y", '"+y')
map("n", "<leader>Y", '"+Y')
map("n", "<leader>d", '"_d')
map("v", "<leader>d", '"_d')

map("i", "<C-c>", "<Esc>")
map("n", "Q", "<nop>")
map("n", "<C-k>", "<cmd>cnext<CR>zz")
map("n", "<C-j>", "<cmd>cprev<CR>zz")
map("n", "<leader>k", "<cmd>lnext<CR>zz")
map("n", "<leader>j", "<cmd>lprev<CR>zz")
map("n", "<leader>s", ":%s/\\<<C-r>")
map("n", "leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
