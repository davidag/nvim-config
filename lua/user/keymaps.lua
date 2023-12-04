-- nvim: mappings: https://neovim.io/doc/user/lua-guide.html#lua-guide-mappings
-- nvim: mode prefixes: `n` = normal mode, `v` = visual & select mode, `x` visual mode

-- lua: `local` defines a local variable, accessible only from this module
-- lua: functions are first-class values
local keymap = vim.keymap.set

-- nvim: noremap makes mappings non-recursive (it's the default, though)
-- nvim: recursive mappings are needed when a mapping resolves itself to another mapping.
-- nvim: silent supresses output such as error messages
local opts = { noremap = true, silent = true }

-- launch: set leader key to space
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<C-Space>", "<cmd>WhichKey \\<space><cr>", opts)

-- david: <C-i> is a TAB in insert mode... but n is for normal mode :S
-- david: why C-i is showing the context menu created at the bottom?
keymap("n", "<C-i>", "<C-i>", opts)

-- Better window navigation
-- david: this is not working... :(
keymap("n", "<m-h>", "<C-w>h", opts)
keymap("n", "<m-j>", "<C-w>j", opts)
keymap("n", "<m-k>", "<C-w>k", opts)
keymap("n", "<m-l>", "<C-w>l", opts)
keymap("n", "<m-tab>", "<c-6>", opts)

-- launch: adding zz redraws with the cursor line at the center of the screen
keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)
keymap("n", "*", "*zz", opts)
keymap("n", "#", "#zz", opts)
keymap("n", "g*", "g*zz", opts)
keymap("n", "g#", "g#zz", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- lua: [[ ]] is an alternative way to define literal strings
-- nvim: replace selection with text from default register
-- nvim: "_ is the black hole register, used to delete text without
--       affecting normal registers
keymap("x", "p", [["_dP]])

-- nvim: amenu makes menu entries for all modes at once
-- nvim: the numbers define the position in the GUI
-- nvim: https://neovim.io/doc/user/usr_42.html
vim.cmd [[:amenu 10.100 mousemenu.Goto\ Definition <cmd>lua vim.lsp.buf.definition()<CR>]]
vim.cmd [[:amenu 10.110 mousemenu.References <cmd>lua vim.lsp.buf.references()<CR>]]
-- vim.cmd [[:amenu 10.120 mousemenu.-sep- *]]

vim.keymap.set("n", "<RightMouse>", "<cmd>:popup mousemenu<CR>")
vim.keymap.set("n", "<Tab>", "<cmd>:popup mousemenu<CR>")
