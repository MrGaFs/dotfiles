vim.g.mapleader = " "

local opt = vim.opt

--encoding

vim.scriptencoding = "utf-8"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.smarttab = true
opt.breakindent = true
opt.wrap = false
opt.backspace = { "start", "eol", "indent" }

-- searching
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

-- cursor line
-- opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.backup = false
opt.showcmd = true
opt.cmdheight = 0
opt.laststatus = 0
opt.scrolloff = 10
opt.inccommand = "split"

opt.path:append({ "**" })
opt.wildignore:append({ "*/node_modules/*" })
