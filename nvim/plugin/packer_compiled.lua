-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/jamie/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?.lua;/home/jamie/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?/init.lua;/home/jamie/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?.lua;/home/jamie/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/jamie/.cache/nvim/packer_hererocks/2.1.1703358377/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  Zenburn = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/Zenburn",
    url = "https://github.com/jnurmine/Zenburn"
  },
  ["ayu-vim"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/ayu-vim",
    url = "https://github.com/ayu-theme/ayu-vim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  edge = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/edge",
    url = "https://github.com/sainnhe/edge"
  },
  everforest = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/everforest",
    url = "https://github.com/sainnhe/everforest"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\2\n>\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\3\0\0\v--fast\a--\1\0\2\bexe\nblack\nstdin\2/\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\16FormatWrite\bcmd\bvimÖ\1\1\0\6\0\15\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0004\4\3\0003\5\4\0>\5\1\4=\4\6\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0005\3\f\0003\4\r\0=\4\14\3B\0\3\1K\0\1\0\rcallback\0\1\0\1\fpattern\t*.py\17BufWritePost\24nvim_create_autocmd\bapi\bvim\rfiletype\vpython\1\0\0\0\1\0\1\flogging\1\nsetup\14formatter\frequire\0" },
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["iceberg.vim"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/iceberg.vim",
    url = "https://github.com/cocopon/iceberg.vim"
  },
  ["kanagawa.nvim"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lsp-zero.nvim"] = {
    config = { "\27LJ\2\nÖ\1\0\2\b\1\15\0\30-\2\0\0009\2\0\0025\4\1\0=\1\2\4B\2\2\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0006\6\3\0009\6\b\0069\6\t\0069\6\n\0065\a\v\0=\1\2\aB\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\f\0006\6\3\0009\6\b\0069\6\t\0069\6\r\0065\a\14\0=\1\2\aB\2\5\1K\0\1\0\0À\1\0\0\15references\agr\1\0\0\15definition\bbuf\blsp\agd\6n\bset\vkeymap\bvim\vbuffer\1\0\0\20default_keymapsC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequirež\5\1\0\t\0&\0F6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0029\1\3\0003\3\4\0B\1\2\0016\1\0\0'\3\5\0B\1\2\0029\1\6\0019\1\a\0015\3\r\0005\4\v\0005\5\t\0005\6\b\0=\6\n\5=\5\f\4=\4\14\3B\1\2\0016\1\0\0'\3\15\0B\1\2\0029\1\a\1B\1\1\0016\1\0\0'\3\16\0B\1\2\0029\1\a\0015\3\18\0005\4\17\0=\4\19\0034\4\3\0009\5\20\0>\5\1\4=\4\21\3B\1\2\0016\1\0\0'\3\22\0B\1\2\0029\2\a\0015\4\25\0004\5\3\0005\6\23\0>\6\1\0055\6\24\0>\6\2\5=\5\26\0045\5\30\0009\6\27\0019\6\28\0065\b\29\0B\6\2\2=\6\31\0059\6\27\0019\6 \6B\6\1\2=\6!\5=\5\27\0045\5#\0003\6\"\0=\6$\5=\5%\4B\2\2\0019\2\a\0B\2\1\0012\0\0€K\0\1\0\fsnippet\vexpand\1\0\0\0\14<C-Space>\rcomplete\n<Tab>\1\0\0\1\0\1\vselect\2\fconfirm\fmapping\fsources\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\bcmp\rhandlers\18default_setup\21ensure_installed\1\0\0\1\2\0\0\fpyright\20mason-lspconfig\nmason\rsettings\1\0\0\vpython\1\0\0\ranalysis\1\0\0\1\0\4\19diagnosticMode\14workspace\21typeCheckingMode\nbasic\27useLibraryCodeForTypes\2\20autoSearchPaths\2\nsetup\fpyright\14lspconfig\0\14on_attach\vpreset\rlsp-zero\frequire\0" },
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  melange = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/melange",
    url = "https://github.com/savq/melange"
  },
  neovim = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/neovim",
    url = "https://github.com/rose-pine/neovim"
  },
  ["nord-vim"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/nord-vim",
    url = "https://github.com/arcticicestudio/nord-vim"
  },
  nvim = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/nvim",
    url = "https://github.com/catppuccin/nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nh\0\0\3\0\5\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0'\2\4\0B\0\2\1K\0\1\0\30nvim-autopairs configured\nprint\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\ni\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\1\vbuffer\2\28<cmd>NvimTreeToggle<CR>\14<leader>e\6n\bset\vkeymap\bvim³\3\1\0\6\0\23\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0005\3\14\0003\4\15\0=\4\16\3B\0\3\0016\0\n\0009\0\17\0009\0\18\0'\2\19\0'\3\20\0'\4\21\0005\5\22\0B\0\5\1K\0\1\0\1\0\3\tdesc\25Toggle file explorer\vsilent\2\fnoremap\2\28<cmd>NvimTreeToggle<CR>\14<leader>e\6n\bset\vkeymap\rcallback\0\1\0\1\fpattern\rNvimTree\rFileType\24nvim_create_autocmd\bapi\bvim\24update_focused_file\1\0\2\venable\2\16update_root\2\ffilters\1\0\1\rdotfiles\1\tview\1\0\3\18hijack_cursor\2\17hijack_netrw\2\18disable_netrw\2\1\0\1\nwidth\3#\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nÈ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\21ensure_installed\1\6\0\0\vpython\blua\15javascript\thtml\bcss\14highlight\1\0\0\1\0\2\venable\2&additional_vim_regex_highlighting\1\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["oceanic-next"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/oceanic-next",
    url = "https://github.com/mhartington/oceanic-next"
  },
  ["onedark.vim"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/onedark.vim",
    url = "https://github.com/joshdick/onedark.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["palenight.vim"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/palenight.vim",
    url = "https://github.com/drewtempelmeyer/palenight.vim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  sonokai = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/sonokai",
    url = "https://github.com/sainnhe/sonokai"
  },
  ["space-vim-dark"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/space-vim-dark",
    url = "https://github.com/liuchengxu/space-vim-dark"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n×\1\0\4\v\0\f\0 6\4\0\0009\4\1\0049\4\2\4\18\6\1\0\18\a\0\0B\4\3\2\6\4\3\0X\5\6€6\5\4\0'\a\5\0\18\b\1\0'\t\6\0\18\n\4\0B\5\5\0016\5\0\0009\5\a\0059\5\b\5\18\a\0\0\18\b\1\0\18\t\2\0\18\n\3\0B\5\5\0016\5\4\0'\a\t\0\18\b\1\0'\t\6\0009\n\n\3\14\0\n\0X\v\1€'\n\v\0B\5\5\1K\0\1\0\funnamed\tdesc\fMapped:\bset\vkeymap\a->\26Conflict detected for\nprint\5\rmapcheck\afn\bvim_\0\0\5\1\6\0\n-\0\0\0009\0\0\0005\2\4\0006\3\1\0009\3\2\0039\3\3\3B\3\1\2=\3\5\2B\0\2\1K\0\1\0\0À\bcwd\1\0\1\vhidden\2\15os_homedir\tloop\bvim\15find_files9\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\0À\1\0\2\vhidden\2\bcwd\6/\15find_filesO\0\0\4\1\4\0\a-\0\0\0009\0\0\0005\2\2\0005\3\1\0=\3\3\2B\0\2\1K\0\1\0\0À\20additional_args\1\0\0\1\2\0\0\r--hidden\14live_grepè\4\1\0\v\0$\1?6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0B\1\2\2\b\1\0\0X\1\2€+\1\1\0X\2\1€+\1\2\0006\2\6\0'\4\a\0\18\5\1\0B\2\3\0016\2\0\0'\4\b\0B\2\2\0029\2\t\0025\4\20\0005\5\v\0005\6\n\0=\6\f\0055\6\17\0005\a\15\0006\b\0\0'\n\r\0B\b\2\0029\b\14\b=\b\16\a=\a\18\6=\6\19\5=\5\21\4B\2\2\0013\2\22\0\18\3\2\0'\5\23\0'\6\24\0009\a\25\0005\b\26\0B\3\5\1\18\3\2\0'\5\23\0'\6\27\0003\a\28\0005\b\29\0B\3\5\1\18\3\2\0'\5\23\0'\6\30\0003\a\31\0005\b \0B\3\5\1\18\3\2\0'\5\23\0'\6!\0003\a\"\0005\b#\0B\3\5\0012\0\0€K\0\1\0\1\0\1\tdesc\14Live grep\0\15<leader>fg\1\0\1\tdesc\20Find root files\0\15<leader>fr\1\0\1\tdesc\19Find all files\0\15<leader>fa\1\0\1\tdesc\23Find project files\15find_files\15<leader>ff\6n\0\rdefaults\1\0\0\rmappings\6i\1\0\0\n<Esc>\1\0\0\nclose\22telescope.actions\25file_ignore_patterns\1\0\1\vhidden\2\1\4\0\0\17node_modules\t.git\v.cache\nsetup\14telescope\18FD installed:\nprint\afd\15executable\afn\bvim\22telescope.builtin\frequire\2\0" },
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tender.vim"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/tender.vim",
    url = "https://github.com/jacoborus/tender.vim"
  },
  ["themery.nvim"] = {
    config = { "\27LJ\2\nŽ\3\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\vthemes\1\0\1\20themeConfigFile&~/.config/nvim/lua/user/theme.lua\1\30\0\0\15tokyonight\fgruvbox\14solarized\fonedark\tnord\fdracula\15everforest\fmoonfly\rnightfly\rmaterial\fsonokai\bayu\15catppuccin\rdarkplus\tedge\ficeberg\rkanagawa\fmelange\17oceanic-next\14palenight\fparaiso\14rose-pine\19space-vim-dark\vtender\fzenburn\20hybrid-material\18two-firewatch\fmonokai\15solarized8\nsetup\fthemery\frequire\0" },
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/themery.nvim",
    url = "https://github.com/zaldih/themery.nvim"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\2\n‘\2\0\0\5\0\r\0!6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0)\2\0\0'\3\5\0005\4\6\0B\0\4\0016\0\0\0009\0\3\0009\0\4\0)\2\0\0'\3\a\0005\4\b\0B\0\4\0016\0\0\0009\0\3\0009\0\4\0)\2\0\0'\3\t\0005\4\n\0B\0\4\0016\0\0\0009\0\3\0009\0\4\0)\2\0\0'\3\v\0005\4\f\0B\0\4\1K\0\1\0\1\0\1\afg\f#9ece6a\nField\1\0\1\afg\f#9ece6a\rProperty\1\0\1\afg\f#ff9e64\rFunction\1\0\1\afg\f#ff9e64\vMethod\16nvim_set_hl\bapi\27colorscheme tokyonight\bcmd\bvim\0" },
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  vim = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/vim",
    url = "https://github.com/dracula/vim"
  },
  ["vim-code-dark"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/vim-code-dark",
    url = "https://github.com/tomasiser/vim-code-dark"
  },
  ["vim-colors-solarized"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/vim-colors-solarized",
    url = "https://github.com/altercation/vim-colors-solarized"
  },
  ["vim-hybrid-material"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/vim-hybrid-material",
    url = "https://github.com/kristijanhusak/vim-hybrid-material"
  },
  ["vim-monokai"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/vim-monokai",
    url = "https://github.com/sickill/vim-monokai"
  },
  ["vim-moonfly-colors"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/vim-moonfly-colors",
    url = "https://github.com/bluz71/vim-moonfly-colors"
  },
  ["vim-nightfly-colors"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/vim-nightfly-colors",
    url = "https://github.com/bluz71/vim-nightfly-colors"
  },
  ["vim-solarized8"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/vim-solarized8",
    url = "https://github.com/lifepillar/vim-solarized8"
  },
  ["vim-tmux-navigator"] = {
    config = { "\27LJ\2\nä\2\0\0\5\0\16\0$6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\3\0009\0\4\0'\2\5\0'\3\6\0'\4\a\0B\0\4\0016\0\0\0009\0\3\0009\0\4\0'\2\5\0'\3\b\0'\4\t\0B\0\4\0016\0\0\0009\0\3\0009\0\4\0'\2\5\0'\3\n\0'\4\v\0B\0\4\0016\0\0\0009\0\3\0009\0\4\0'\2\5\0'\3\f\0'\4\r\0B\0\4\0016\0\14\0'\2\15\0B\0\2\1K\0\1\0\30Tmux navigator configured\nprint\31<cmd>TmuxNavigateRight<CR>\n<C-l>\28<cmd>TmuxNavigateUp<CR>\n<C-k>\30<cmd>TmuxNavigateDown<CR>\n<C-j>\30<cmd>TmuxNavigateLeft<CR>\n<C-h>\6n\bset\vkeymap\31tmux_navigator_no_mappings\6g\bvim\0" },
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["vim-two-firewatch"] = {
    loaded = true,
    path = "/home/jamie/.local/share/nvim/site/pack/packer/start/vim-two-firewatch",
    url = "https://github.com/rakr/vim-two-firewatch"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nÈ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\21ensure_installed\1\6\0\0\vpython\blua\15javascript\thtml\bcss\14highlight\1\0\0\1\0\2\venable\2&additional_vim_regex_highlighting\1\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: themery.nvim
time([[Config for themery.nvim]], true)
try_loadstring("\27LJ\2\nŽ\3\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\vthemes\1\0\1\20themeConfigFile&~/.config/nvim/lua/user/theme.lua\1\30\0\0\15tokyonight\fgruvbox\14solarized\fonedark\tnord\fdracula\15everforest\fmoonfly\rnightfly\rmaterial\fsonokai\bayu\15catppuccin\rdarkplus\tedge\ficeberg\rkanagawa\fmelange\17oceanic-next\14palenight\fparaiso\14rose-pine\19space-vim-dark\vtender\fzenburn\20hybrid-material\18two-firewatch\fmonokai\15solarized8\nsetup\fthemery\frequire\0", "config", "themery.nvim")
time([[Config for themery.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n×\1\0\4\v\0\f\0 6\4\0\0009\4\1\0049\4\2\4\18\6\1\0\18\a\0\0B\4\3\2\6\4\3\0X\5\6€6\5\4\0'\a\5\0\18\b\1\0'\t\6\0\18\n\4\0B\5\5\0016\5\0\0009\5\a\0059\5\b\5\18\a\0\0\18\b\1\0\18\t\2\0\18\n\3\0B\5\5\0016\5\4\0'\a\t\0\18\b\1\0'\t\6\0009\n\n\3\14\0\n\0X\v\1€'\n\v\0B\5\5\1K\0\1\0\funnamed\tdesc\fMapped:\bset\vkeymap\a->\26Conflict detected for\nprint\5\rmapcheck\afn\bvim_\0\0\5\1\6\0\n-\0\0\0009\0\0\0005\2\4\0006\3\1\0009\3\2\0039\3\3\3B\3\1\2=\3\5\2B\0\2\1K\0\1\0\0À\bcwd\1\0\1\vhidden\2\15os_homedir\tloop\bvim\15find_files9\0\0\3\1\2\0\5-\0\0\0009\0\0\0005\2\1\0B\0\2\1K\0\1\0\0À\1\0\2\vhidden\2\bcwd\6/\15find_filesO\0\0\4\1\4\0\a-\0\0\0009\0\0\0005\2\2\0005\3\1\0=\3\3\2B\0\2\1K\0\1\0\0À\20additional_args\1\0\0\1\2\0\0\r--hidden\14live_grepè\4\1\0\v\0$\1?6\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0B\1\2\2\b\1\0\0X\1\2€+\1\1\0X\2\1€+\1\2\0006\2\6\0'\4\a\0\18\5\1\0B\2\3\0016\2\0\0'\4\b\0B\2\2\0029\2\t\0025\4\20\0005\5\v\0005\6\n\0=\6\f\0055\6\17\0005\a\15\0006\b\0\0'\n\r\0B\b\2\0029\b\14\b=\b\16\a=\a\18\6=\6\19\5=\5\21\4B\2\2\0013\2\22\0\18\3\2\0'\5\23\0'\6\24\0009\a\25\0005\b\26\0B\3\5\1\18\3\2\0'\5\23\0'\6\27\0003\a\28\0005\b\29\0B\3\5\1\18\3\2\0'\5\23\0'\6\30\0003\a\31\0005\b \0B\3\5\1\18\3\2\0'\5\23\0'\6!\0003\a\"\0005\b#\0B\3\5\0012\0\0€K\0\1\0\1\0\1\tdesc\14Live grep\0\15<leader>fg\1\0\1\tdesc\20Find root files\0\15<leader>fr\1\0\1\tdesc\19Find all files\0\15<leader>fa\1\0\1\tdesc\23Find project files\15find_files\15<leader>ff\6n\0\rdefaults\1\0\0\rmappings\6i\1\0\0\n<Esc>\1\0\0\nclose\22telescope.actions\25file_ignore_patterns\1\0\1\vhidden\2\1\4\0\0\17node_modules\t.git\v.cache\nsetup\14telescope\18FD installed:\nprint\afd\15executable\afn\bvim\22telescope.builtin\frequire\2\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: lsp-zero.nvim
time([[Config for lsp-zero.nvim]], true)
try_loadstring("\27LJ\2\nÖ\1\0\2\b\1\15\0\30-\2\0\0009\2\0\0025\4\1\0=\1\2\4B\2\2\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\a\0006\6\3\0009\6\b\0069\6\t\0069\6\n\0065\a\v\0=\1\2\aB\2\5\0016\2\3\0009\2\4\0029\2\5\2'\4\6\0'\5\f\0006\6\3\0009\6\b\0069\6\t\0069\6\r\0065\a\14\0=\1\2\aB\2\5\1K\0\1\0\0À\1\0\0\15references\agr\1\0\0\15definition\bbuf\blsp\agd\6n\bset\vkeymap\bvim\vbuffer\1\0\0\20default_keymapsC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequirež\5\1\0\t\0&\0F6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0029\1\3\0003\3\4\0B\1\2\0016\1\0\0'\3\5\0B\1\2\0029\1\6\0019\1\a\0015\3\r\0005\4\v\0005\5\t\0005\6\b\0=\6\n\5=\5\f\4=\4\14\3B\1\2\0016\1\0\0'\3\15\0B\1\2\0029\1\a\1B\1\1\0016\1\0\0'\3\16\0B\1\2\0029\1\a\0015\3\18\0005\4\17\0=\4\19\0034\4\3\0009\5\20\0>\5\1\4=\4\21\3B\1\2\0016\1\0\0'\3\22\0B\1\2\0029\2\a\0015\4\25\0004\5\3\0005\6\23\0>\6\1\0055\6\24\0>\6\2\5=\5\26\0045\5\30\0009\6\27\0019\6\28\0065\b\29\0B\6\2\2=\6\31\0059\6\27\0019\6 \6B\6\1\2=\6!\5=\5\27\0045\5#\0003\6\"\0=\6$\5=\5%\4B\2\2\0019\2\a\0B\2\1\0012\0\0€K\0\1\0\fsnippet\vexpand\1\0\0\0\14<C-Space>\rcomplete\n<Tab>\1\0\0\1\0\1\vselect\2\fconfirm\fmapping\fsources\1\0\0\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\bcmp\rhandlers\18default_setup\21ensure_installed\1\0\0\1\2\0\0\fpyright\20mason-lspconfig\nmason\rsettings\1\0\0\vpython\1\0\0\ranalysis\1\0\0\1\0\4\19diagnosticMode\14workspace\21typeCheckingMode\nbasic\27useLibraryCodeForTypes\2\20autoSearchPaths\2\nsetup\fpyright\14lspconfig\0\14on_attach\vpreset\rlsp-zero\frequire\0", "config", "lsp-zero.nvim")
time([[Config for lsp-zero.nvim]], false)
-- Config for: vim-tmux-navigator
time([[Config for vim-tmux-navigator]], true)
try_loadstring("\27LJ\2\nä\2\0\0\5\0\16\0$6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\3\0009\0\4\0'\2\5\0'\3\6\0'\4\a\0B\0\4\0016\0\0\0009\0\3\0009\0\4\0'\2\5\0'\3\b\0'\4\t\0B\0\4\0016\0\0\0009\0\3\0009\0\4\0'\2\5\0'\3\n\0'\4\v\0B\0\4\0016\0\0\0009\0\3\0009\0\4\0'\2\5\0'\3\f\0'\4\r\0B\0\4\0016\0\14\0'\2\15\0B\0\2\1K\0\1\0\30Tmux navigator configured\nprint\31<cmd>TmuxNavigateRight<CR>\n<C-l>\28<cmd>TmuxNavigateUp<CR>\n<C-k>\30<cmd>TmuxNavigateDown<CR>\n<C-j>\30<cmd>TmuxNavigateLeft<CR>\n<C-h>\6n\bset\vkeymap\31tmux_navigator_no_mappings\6g\bvim\0", "config", "vim-tmux-navigator")
time([[Config for vim-tmux-navigator]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nh\0\0\3\0\5\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0'\2\4\0B\0\2\1K\0\1\0\30nvim-autopairs configured\nprint\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\n>\0\0\2\0\3\0\0045\0\0\0005\1\1\0=\1\2\0L\0\2\0\targs\1\3\0\0\v--fast\a--\1\0\2\bexe\nblack\nstdin\2/\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\16FormatWrite\bcmd\bvimÖ\1\1\0\6\0\15\0\0216\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\5\0004\4\3\0003\5\4\0>\5\1\4=\4\6\3=\3\a\2B\0\2\0016\0\b\0009\0\t\0009\0\n\0'\2\v\0005\3\f\0003\4\r\0=\4\14\3B\0\3\1K\0\1\0\rcallback\0\1\0\1\fpattern\t*.py\17BufWritePost\24nvim_create_autocmd\bapi\bvim\rfiletype\vpython\1\0\0\0\1\0\1\flogging\1\nsetup\14formatter\frequire\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\ni\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\1\vbuffer\2\28<cmd>NvimTreeToggle<CR>\14<leader>e\6n\bset\vkeymap\bvim³\3\1\0\6\0\23\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\0016\0\n\0009\0\v\0009\0\f\0'\2\r\0005\3\14\0003\4\15\0=\4\16\3B\0\3\0016\0\n\0009\0\17\0009\0\18\0'\2\19\0'\3\20\0'\4\21\0005\5\22\0B\0\5\1K\0\1\0\1\0\3\tdesc\25Toggle file explorer\vsilent\2\fnoremap\2\28<cmd>NvimTreeToggle<CR>\14<leader>e\6n\bset\vkeymap\rcallback\0\1\0\1\fpattern\rNvimTree\rFileType\24nvim_create_autocmd\bapi\bvim\24update_focused_file\1\0\2\venable\2\16update_root\2\ffilters\1\0\1\rdotfiles\1\tview\1\0\3\18hijack_cursor\2\17hijack_netrw\2\18disable_netrw\2\1\0\1\nwidth\3#\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
try_loadstring("\27LJ\2\n‘\2\0\0\5\0\r\0!6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0)\2\0\0'\3\5\0005\4\6\0B\0\4\0016\0\0\0009\0\3\0009\0\4\0)\2\0\0'\3\a\0005\4\b\0B\0\4\0016\0\0\0009\0\3\0009\0\4\0)\2\0\0'\3\t\0005\4\n\0B\0\4\0016\0\0\0009\0\3\0009\0\4\0)\2\0\0'\3\v\0005\4\f\0B\0\4\1K\0\1\0\1\0\1\afg\f#9ece6a\nField\1\0\1\afg\f#9ece6a\rProperty\1\0\1\afg\f#ff9e64\rFunction\1\0\1\afg\f#ff9e64\vMethod\16nvim_set_hl\bapi\27colorscheme tokyonight\bcmd\bvim\0", "config", "tokyonight.nvim")
time([[Config for tokyonight.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
