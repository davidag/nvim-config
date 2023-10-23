-- nvim: options summary: https://neovim.io/doc/user/options.html#option-summary
-- nvim: `vim.opt` is the most convienent way to set global and local options
-- nvim: `vim.opt.backup = false` is equivalent to `set backup` in Vimscript

vim.opt.clipboard = "unnamedplus" -- use the clipboard register (+) for all y, d, c and p operations
vim.opt.mouse = "a" -- allow the mouse to be used in neovim

vim.opt.completeopt = { "menuone", "noselect" } -- for cmp: show popup menu and force user to select
-- vim.opt.fileencoding = "utf-8" -- the encoding written to a file

vim.opt.conceallevel = 0 -- so that `` is visible in markdown files (show text normally)
vim.opt.cmdheight = 1 -- space in the neovim command line for displaying messages
vim.opt.pumheight = 10 -- max pop up menu height
vim.opt.pumblend = 10 -- pop up menu pseudotransparency (0=opaque, 100=transparent)
vim.opt.showtabline = 1 -- show tabs if at least two tabs
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.laststatus = 3 -- last window will always have a status line (but only the last window)
vim.opt.showcmd = false -- don't show (partial) cmd in the last line of screen
vim.opt.signcolumn = "yes" -- always show the sign column, otherwise it would shift the text each time
vim.opt.guifont = "monospace:h17" -- the font used in GUI neovim
vim.opt.title = false -- don't set the window title to 'titlestring'

vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window

vim.opt.wrap = false -- don't wrap lines
vim.opt.scrolloff = 0 -- minimal number of screen lines to keep above and below the cursor
vim.opt.sidescrolloff = 8 -- minimal number of screen columns to keep left and right of the cursor (if no wrap set)

vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns

vim.opt.autoindent = true -- copy indent from current line when starting a new line
vim.opt.smartcase = true -- smart case (don't ignore case if search contains any upper case char)
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 4 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4 -- insert 4 spaces for a tab

vim.opt.timeout = true -- wait a timeout after a mapped key sequence is received
vim.opt.timeoutlen = 1000 -- time to wait for a mapped sequence to complete (in milliseconds)

vim.opt.swapfile = false -- don't create a swapfile
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 100 -- time before swap is written to disk, also used for CursorHold autocommand event (4000ms default). faster completion.
vim.opt.backup = false -- don't create backup files
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited

vim.opt.cursorline = true -- highlight the current line
vim.opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.opt.ruler = false -- don't show line and column number of cursor position
vim.opt.number = true -- set numbered lines
vim.opt.relativenumber = true -- set relative numbered lines
vim.opt.numberwidth = 4 -- set minimal number column width to 4 {default 4}
vim.opt.fillchars = vim.opt.fillchars + "eob: " -- empty lines at end of buffer (default '~')
vim.opt.fillchars:append {
  stl = " ", -- stl = status line of the current window
}

vim.opt.shortmess:append "c" -- don't five insert completion messages

-- nvim: `vim.cmd` allows running an arbitrary Vim command from Lua
vim.cmd "set whichwrap+=<,>,[,],h,l" -- "b,s" (<bs>,<space>) + these (cursor keys + h,l)
-- lua: double brackets are for multiline strings :S
vim.cmd [[set iskeyword+=-]]

-- nvim: `vim.g` access global variables
vim.g.netrw_banner = 0 -- suppress the banner
vim.g.netrw_mouse = 2 -- ???
