require "nvchad.mappings"
local telescope = require('telescope.builtin')
local comment = require('Comment.api')
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- VSCode Vim mappings (taking precedence)
map("n", "space f f", "<cmd>lua vim.cmd('workbench.action.quickOpen')<CR>", opts)
map("n", "space f g", "<cmd>lua vim.cmd('workbench.action.findInFiles')<CR>", opts)
map("n", "g d", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
-- map("v", "g c", "<cmd>lua vim.lsp.buf.block_comment()<CR>", opts)
map('n', "r n", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
map("n", "<A-h>", ":bprevious<CR>", opts)
map("n", "<A-l>", ":bnext<CR>", opts)
map({ 'n', 'i', 'v' }, '<C-s>', ':w<CR>', opts)
map({ 'n', 'i', 'v' }, '<C-w>', ':bd<CR>', opts)
-- Yanking and copying in visual mode
map("v", "y", '"+y<Esc>', opts)
map("v", "c", '"+c<Esc>', opts)

-- NeoVim mappings (not overridden by VSCode)
map("n", "gc", function()
  comment.toggle.linewise.current()
end, opts)
map("n", "<leader>fg", function()
  telescope.live_grep()
end, opts)
map("n", ";", ":", { desc = "CMD enter command mode" })
map('i', "<C-H>", "<C-W>", opts)
map("i", "<C-t>", "<ESC>", opts)
map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
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
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
