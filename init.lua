-- lua: require is the standard way to include modules

-- launch: user.launch defines the spec() function used later
require "user.launch"
require "user.options"
require "user.keymaps"
require "user.autocmds"

spec "user.colorscheme"
spec "user.devicons"
spec "user.treesitter"
spec "user.mason"
spec "user.schemastore"
spec "user.lspconfig"
spec "user.navic"
spec "user.breadcrumbs"
spec "user.null-ls"
spec "user.illuminate"
spec "user.telescope"
spec "user.telescope-tabs"
spec "user.nvimtree"
spec "user.lualine"
spec "user.whichkey"
spec "user.cmp"
spec "user.autopairs"
spec "user.comment"
spec "user.gitsigns"
spec "user.neogit"
spec "user.diffview"
spec "user.indentline"
-- david: it's even faster when commented out
-- spec "user.alpha"
-- david: ok, but it's disabled now, let's use nvimtree only
-- spec "user.netrw"
spec "user.project"
spec "user.toggleterm"
spec "user.bufdelete"

require "user.lazy"
