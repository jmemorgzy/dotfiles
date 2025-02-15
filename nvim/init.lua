-- Set leader FIRST (critical)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Debug: Verify leader is set
vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    print('Leader key is: "' .. vim.g.mapleader .. '"')
  end
})

-- Key mappings for saving and quitting
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save file' })
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Quit file' })

-- Install Packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    print('Installing Packer...')
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Configure plugins with explicit keymap verification
require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- Tokyo Night theme with custom highlights
  use {
    'folke/tokyonight.nvim',
    config = function()
      vim.cmd[[colorscheme tokyonight]]

      -- Customize highlight groups
      vim.api.nvim_set_hl(0, 'Method', { fg = '#ff9e64' }) -- Methods in a different color
      vim.api.nvim_set_hl(0, 'Function', { fg = '#ff9e64' }) -- Functions in a different color
      vim.api.nvim_set_hl(0, 'Property', { fg = '#9ece6a' }) -- Properties in a different color
      vim.api.nvim_set_hl(0, 'Field', { fg = '#9ece6a' }) -- Fields in a different color
    end
  }

  -- Theme plugins
  use 'morhetz/gruvbox'
  use 'altercation/vim-colors-solarized'
  use 'joshdick/onedark.vim'
  use 'arcticicestudio/nord-vim'
  use 'dracula/vim'
  use 'sainnhe/everforest'
  use 'bluz71/vim-moonfly-colors'
  use 'bluz71/vim-nightfly-colors'
  use 'marko-cerovac/material.nvim'
  use 'sainnhe/sonokai'
  use 'ayu-theme/ayu-vim'
  use 'catppuccin/nvim'
  use 'tomasiser/vim-code-dark'
  use 'sainnhe/edge'
  use 'cocopon/iceberg.vim'
  use 'rebelot/kanagawa.nvim'
  use 'savq/melange'
  use 'mhartington/oceanic-next'
  use 'drewtempelmeyer/palenight.vim'
  use 'rose-pine/neovim'
  use 'liuchengxu/space-vim-dark'
  use 'jacoborus/tender.vim'
  use 'jnurmine/Zenburn'
  use 'kristijanhusak/vim-hybrid-material'
  use 'rakr/vim-two-firewatch'
  use 'sickill/vim-monokai'
  use 'lifepillar/vim-solarized8'

  -- nvim-treesitter for advanced syntax highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup({
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        ensure_installed = { 'python', 'lua', 'javascript', 'html', 'css' },
      })
    end
  }

  -- File explorer configuration
  use {
    'nvim-tree/nvim-tree.lua',
    requires = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('nvim-tree').setup({
        view = {
          width = 35,
        },
        filters = {
          dotfiles = false,
        },
        -- Disable automatic mappings
        disable_netrw = true,
        hijack_netrw = true,
        hijack_cursor = true,
        update_focused_file = {
          enable = true,
          update_root = true,
        },
      })

      -- Explicit keybind setup
      vim.api.nvim_create_autocmd('FileType', {
        pattern = 'NvimTree',
        callback = function()
          vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { buffer = true })
        end
      })

      -- Global toggle keybind
      vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', {
        desc = 'Toggle file explorer',
        silent = true,
        noremap = true
      })
    end
  }

  -- Telescope with verified keymaps
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.3',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require('telescope.builtin')

      -- Verify FD installation
      local fd_exists = vim.fn.executable('fd') == 1
      print('FD installed:', fd_exists)

      require('telescope').setup({
        defaults = {
          file_ignore_patterns = { "node_modules", ".git", ".cache" },
          hidden = true,
          mappings = {
            i = {
              ['<Esc>'] = require('telescope.actions').close
            }
          }
        }
      })

      -- Keymap verification wrapper
      local function safe_keymap(mode, lhs, rhs, opts)
        local existing = vim.fn.mapcheck(lhs, mode)
        if existing ~= "" then
          print('Conflict detected for', lhs, '->', existing)
        end
        vim.keymap.set(mode, lhs, rhs, opts)
        print('Mapped:', lhs, '->', opts.desc or 'unnamed')
      end

      -- Telescope keymaps with verification
      safe_keymap('n', '<leader>ff', builtin.find_files, {
        desc = 'Find project files'
      })

      safe_keymap('n', '<leader>fa', function()
        builtin.find_files({ cwd = vim.loop.os_homedir(), hidden = true })
      end, { desc = 'Find all files' })

      safe_keymap('n', '<leader>fr', function()
        builtin.find_files({ cwd = '/', hidden = true })
      end, { desc = 'Find root files' })

      safe_keymap('n', '<leader>fg', function()
        builtin.live_grep({ additional_args = { '--hidden' } })
      end, { desc = 'Live grep' })
    end
  }

  -- LSP & Autocompletion configuration
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    },
    config = function()
      local lsp = require('lsp-zero').preset({})

      -- Configure LSP keymaps and capabilities
      lsp.on_attach(function(client, bufnr)
        lsp.default_keymaps({buffer = bufnr})
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr })
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = bufnr })
      end)

      -- Configure Python LSP
      require('lspconfig').pyright.setup({
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "basic",
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
              diagnosticMode = "workspace"
            }
          }
        }
      })

      -- Setup mason to manage LSP servers
      require('mason').setup()
      require('mason-lspconfig').setup({
        ensure_installed = {'pyright'},
        handlers = {
          lsp.default_setup,
        }
      })

      -- Configure autocompletion
      local cmp = require('cmp')
      cmp.setup({
        sources = {
          {name = 'nvim_lsp'},
          {name = 'buffer'},
        },
        mapping = {
          ['<Tab>'] = cmp.mapping.confirm({select = true}),
          ['<C-Space>'] = cmp.mapping.complete(),
        },
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        }
      })

      lsp.setup()
    end
  }

  -- Tmux navigation with verification
  use {
    'christoomey/vim-tmux-navigator',
    config = function()
      vim.g.tmux_navigator_no_mappings = 1
      vim.keymap.set('n', '<C-h>', '<cmd>TmuxNavigateLeft<CR>')
      vim.keymap.set('n', '<C-j>', '<cmd>TmuxNavigateDown<CR>')
      vim.keymap.set('n', '<C-k>', '<cmd>TmuxNavigateUp<CR>')
      vim.keymap.set('n', '<C-l>', '<cmd>TmuxNavigateRight<CR>')
      print('Tmux navigator configured')
    end
  }

  -- Autoclose brackets with nvim-autopairs
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
      print('nvim-autopairs configured')
    end
  }

  -- Format Python code with black on save
  use {
    'mhartington/formatter.nvim',
    config = function()
      require('formatter').setup({
        logging = false,
        filetype = {
          python = {
            function()
              return {
                exe = "black",
                args = {"--fast", "--"},
                stdin = true
              }
            end
          },
        }
      })

      -- Format on save
      vim.api.nvim_create_autocmd("BufWritePost", {
        pattern = "*.py",
        callback = function()
          vim.cmd("FormatWrite")
        end,
      })
    end
  }



    -- Add themery.nvim
  use {
    'zaldih/themery.nvim',
    config = function()
      require('themery').setup({
        themes = {
          -- List your themes here
          'tokyonight', 'gruvbox', 'solarized', 'onedark', 'nord', 'dracula', 
          'everforest', 'moonfly', 'nightfly', 'material', 'sonokai', 'ayu', 
          'catppuccin', 'darkplus', 'edge', 'iceberg', 'kanagawa', 'melange', 
          'oceanic-next', 'palenight', 'paraiso', 'rose-pine', 'space-vim-dark',
          'tender', 'zenburn', 'hybrid-material', 'two-firewatch', 'monokai', 
          'solarized8'
        },
        themeConfigFile = "~/.config/nvim/lua/user/theme.lua"
      })
    end
    }
end)



-- General settings with verification
vim.opt.number = true
vim.opt.relativenumber = true
print('Basic settings applied')

-- Auto-install plugins
if packer_bootstrap then
  require('packer').sync()
end

