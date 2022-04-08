--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedarker"
-- lvim.colorscheme = "onedark"

--nvim-cmp
-- lvim.builtin.cmp.formatting = {
--   format = lvim.builtin.cmp.formatting.kind_icons.cmp_format({
--     mode = "symbol_text",
--     menu = ({
--       buffer = "[Buffer]",
--       nvim_lsp = "[LSP]",
--       luasnip = "[LuaSnip]",
--       nvim_lua = "[Lua]",
--       latex_symbols = "[Latex]",
--     })
--   }),
-- }

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = false
-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"
-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnostics" },
}

lvim.builtin.which_key.mappings["Z"] = {
  name = "+True Zen",
  m = { "<cmd>TZMinimalist<cr>", "Minimalist" },
  f = { "<cmd>TZFocus<cr>", "Focus" },
  a = { "<cmd>TZAtaraxis<cr>", "Ataraxis" },
}

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
--DASHBOARD.
lvim.builtin.dashboard.active = true
lvim.builtin.dashboard.custom_header = {
   "",
   "",
   "",
   "",
   "",
   "",
   "",
   "",
   "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
   "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
   "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
   "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
   "          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
   "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
   "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
   " ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
   " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
   "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
   "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
}

lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0


-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "json",
  "lua",
  "python",
  "typescript",
  "css",
  "rust",
  "java",
  "yaml",
  "c_sharp",
  "html",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings

-- ---@usage disable automatic installation of servers
-- lvim.lsp.automatic_servers_installation = false

-- ---@usage Select which servers should be configured manually. Requires `:LvimCacheRest` to take effect.
-- See the full default list `:lua print(vim.inspect(lvim.lsp.override))`
-- vim.list_extend(lvim.lsp.override, { "pyright" })

-- ---@usage setup a server -- see: https://www.lunarvim.org/languages/#overriding-the-default-configuration
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pylsp", opts)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "black", filetypes = { "python" } },
--   { command = "isort", filetypes = { "python" } },
--   {
--     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "prettier",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--print-with", "100" },
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--severity", "warning" },
--   },
--   {
--     command = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }

lvim.plugins = {
  {
    --Smooth scroll.
    "karb94/neoscroll.nvim",
    require('neoscroll').setup()
  },
  {
    --Show function signature when you type.
    "ray-x/lsp_signature.nvim",
  },
  {
    --A tree like view for symbols.
    "simrat39/symbols-outline.nvim",
  },
  {
    --Diagnostics, references, telescope results, quickfix and location lists.
    "folke/trouble.nvim",
  },
  {
    --Identation guides for every line.
    "lukas-reineke/indent-blankline.nvim",
  },
  {
    --Mappings to delete, change and add surroundings.
    "tpope/vim-surround",
    -- keys = {"c", "d", "y"}
  },
  {
    --Previewing goto defitinion calls.
    "rmagatti/goto-preview",
  },
  {
    --Interactive scratchpad for hackers.
    "metakirby5/codi.vim",
  },
  {
    --Autoclose and autorename html tag.
    "windwp/nvim-ts-autotag",
  },
  {
    --Coloe highlighter.
    "norcalli/nvim-colorizer.lua",
  },
  {
    --Live edit html, css and javascript.
    "turbio/bracey.vim",
    run = "npm install --prefix server",
  },
  {
    --Onedark theme.
    'monsonjeremy/onedark.nvim'
  },
  {
    --Clean and elegant distraction-free writing for neovim.
    "Pocco81/TrueZen.nvim"
  },
}

--use one dark color plugin.
require('onedark').setup()

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }

--KITTY PADDING MODIFICATION IN .zshrc
--If using kitty terminal emulator, put this in .zshrc configuration.
-- v(){
--   if [[ $TERM == "xterm-kitty" ]]; then
--     kitty @ set-spacing padding=0
--     lvim $*
--     kitty @ set-spacing padding=11
--   else
--     lvim $*
--   fi
-- }
--KITTY PADDING MODIFICATION IN .zshrc

--ALACRITTY PADDING AUTOCOMMAND.
-- function Sad(line_nr, from, to, fname)
--   vim.cmd(string.format("silent !sed -i '%ss/%s/%s/' %s", line_nr, from, to, fname))
-- end

-- function IncreasePadding()
--    Sad('49', 0, 11, '~/.config/alacritty/alacritty.yml')
--    Sad('50', 0, 11, '~/.config/alacritty/alacritty.yml')
-- end

-- function DecreasePadding()
--    Sad('49', 11, 0, '~/.config/alacritty/alacritty.yml')
--    Sad('50', 11, 0, '~/.config/alacritty/alacritty.yml')
-- end

-- vim.cmd[[
--   augroup ChangeAlacrittyPadding
--    au!
--    au VimEnter * lua DecreasePadding()
--    au VimLeavePre * lua IncreasePadding()
--   augroup END
-- ]]
--ALACRITTY PADDING AUTOCOMMAND.

--Don't change the cursor shape.
vim.opt.guicursor=""

--Relative numbers.
vim.opt.relativenumber = true

--Improve open speed.
vim.opt.shell = "/bin/sh"

--MAPPINGS.
--Deselect browser search patterns.
lvim.keys.normal_mode["<Esc>"] = ":noh<CR>"
--Insert movenet options.
lvim.keys.insert_mode["<C-h>"] = "<left>"
lvim.keys.insert_mode["<C-j>"] = "<down>"
lvim.keys.insert_mode["<C-k>"] = "<up>"
lvim.keys.insert_mode["<C-l>"] = "<right>"
--Symbols outline open.
lvim.keys.normal_mode["<leader>S"] = ":SymbolsOutline<CR>"
--Moving through buffers.
lvim.keys.normal_mode["<TAB>"] = ":BufferNext<CR>"
lvim.keys.normal_mode["<S-TAB>"] = ":BufferPrevious<CR>"

--Show modes.
vim.opt.showmode = true

--Spaces in the neovim command line.
vim.opt.cmdheight = 1

--LuaLine style
local components = require("lvim.core.lualine.components")
lvim.builtin.lualine.style = "default"
lvim.builtin.lualine.sections.lualine_b = {
  components.branch,
  components.filename,
}
lvim.builtin.lualine.sections.lualine_c = {
  components.diff,
  components.python_env,
  components.diagnostics,
}
lvim.builtin.lualine.sections.lualine_x = {
  -- components.treesitter,
  components.filetype,
  components.lsp,
}
lvim.builtin.lualine.inactive_sections = {
  lualine_a = {
    "filename",
  }
}

local colors = {
  green = "#98C379",
  gray = "#3E4452",
  black = "#2C323C",
  black_text = "#313241",
  white_text = "#A6A7AB",
  blue = "#61AFEF",
  purple = "#C678DD",
  red = "#E06C75",
}

lvim.builtin.lualine.options.theme = {
  normal = {
    a = { fg = colors.black_text, bg = colors.green, gui = "bold" },
    b = { fg = colors.white_text, bg = colors.gray },
    c = { fg = colors.white_text, bg = colors.black },
  },
  insert = {
    a = { fg = colors.black_text, bg = colors.blue, gui = "bold" },
    b = { fg = colors.white_text, bg = colors.gray },
    c = { fg = colors.white_text, bg = colors.black },
  },
  visual = {
    a = { fg = colors.black_text, bg = colors.purple, gui = "bold" },
    b = { fg = colors.white_text, bg = colors.gray },
    c = { fg = colors.white_text, bg = colors.black },
  },
  replace = {
    a = { fg = colors.black_text, bg = colors.red, gui = "bold" },
    b = { fg = colors.white_text, bg = colors.gray },
    c = { fg = colors.white_text, bg = colors.black },
  },
  inactive = {
    a = { fg = colors.black_text, bg = colors.green, gui = "bold" },
    b = { fg = colors.white_text, bg = colors.gray },
    c = { fg = colors.white_text, bg = colors.black },
  },
}

lvim.builtin.lualine.tabline = {}
lvim.builtin.lualine.extensions = { "nvim-tree" }
lvim.builtin.lualine.options.disabled_filetypes = { "dashboard", "NvimTree", "Outline" }


--nvimtree.
lvim.builtin.nvimtree.quit_on_open = 1
lvim.builtin.nvimtree.show_icons.folder_arrows = 0
lvim.builtin.nvimtree.indent_markers = 1
lvim.builtin.nvimtree.highlight_opened_files = 1

--Telescope
lvim.builtin.telescope.defaults.layout_config.prompt_position = "top"
lvim.builtin.telescope.defaults.sorting_strategy = "ascending"
lvim.builtin.telescope.defaults.file_ignore_patterns = { "node_modules" }

--Bufferline
lvim.builtin.bufferline.always_show_bufferline = true

--indent-blankline
require("indent_blankline").setup({
  filetype_exclude = {"dashboard", "help", "terminal", "lspinfo", "lsp-installer", "PackerInstall"},
  buftype_exclude = {"terminal"},
  show_current_context = true,
  -- show_current_context_start = true,
})


--lsp-signature
require("lsp_signature").setup()

--goto-preview
require('goto-preview').setup({
  width = 120; -- Width of the floating window
  height = 25; -- Height of the floating window
  default_mappings = false; -- Bind default mappings
  debug = false; -- Print debug information
  opacity = nil; -- 0-100 opacity level of the floating window where 100 is fully transparent.
  post_open_hook = nil -- A function taking two arguments, a buffer and a window to be ran as a hook.
})

--nvim-ts-autotag
require('nvim-ts-autotag').setup()


--colorizer
require("colorizer").setup({ "*" }, {
   RGB = true, -- #RGB hex codes
   RRGGBB = true, -- #RRGGBB hex codes
   RRGGBBAA = true, -- #RRGGBBAA hex codes
   rgb_fn = true, -- CSS rgb() and rgba() functions
   hsl_fn = true, -- CSS hsl() and hsla() functions
   css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
   css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
})

--LSP server config
local util = require('lspconfig').util

--Tsserver
-- require'lspconfig'.tsserver.setup{
--   root_dir = util.root_pattern("*.js")
-- }

--Python
--jedi-language-server
require'lspconfig'.jedi_language_server.setup{
  cmd = { "jedi-language-server" };
  filetypes = { "python" };
  root_dir = util.root_pattern("*.py");
  single_file_support = true;
}
--pyright
-- require'lspconfig'.pyright.setup{
--
-- }

--Lsp omnisharp
local pid = vim.fn.getpid()
local omnisharp_bin = "/home/mmaganadebia/.local/share/nvim/lsp_servers/omnisharp/omnisharp/run"
require'lspconfig'.omnisharp.setup{
  cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid)};
  root_dir = util.root_pattern("*.cs")
}

--null-ls omnisharp
-- local null_ls = require "null-ls"
-- local b = null_ls.builtins
-- local sources = {
--   b.formatting.clang_format.with { filetypes = { "cs" } },
-- }

-- local M = {}
-- M.setup = function ()
--   null_ls.setup {
--     debug = true,
--     sources = sources,

--     --format on save
--     on_attach = function (client)
--       if client.resolved_capabilities.document.formatting then
--         vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.formatting_sync()"
--       end
--     end,
--   }
-- end
-- return M


