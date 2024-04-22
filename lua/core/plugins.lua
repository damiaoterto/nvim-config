require("lazy").setup({
  -- Theme
  { "rose-pine/neovim", name = "rose-pine" },
  {
    "xero/miasma.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
  },

  -- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "ryanoasis/vim-devicons" },
  { "nvim-tree/nvim-web-devicons" },
  { "nvim-tree/nvim-tree.lua" },
  {'akinsho/toggleterm.nvim', version = "*", config = true},
  { "folke/neodev.nvim", opts = {} },
  -- LSP
  "williamboman/nvim-lsp-installer",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  -- Dashboars
  "goolord/alpha-nvim",
  -- Barbar
  {'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
  -- ident breaklines
  -- { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

  -- lspkind
  { "onsails/lspkind.nvim" },
  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
  -- autopairs
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {}
  },
  -- friendly-snippers
  { "rafamadriz/friendly-snippets" },
  -- snipper engine
  "hrsh7th/nvim-cmp",
  "saadparwaiz1/cmp_luasnip",
  "dcampos/nvim-snippy",
  "hrsh7th/cmp-nvim-lsp",
  {
	  "L3MON4D3/LuaSnip",
	  -- follow latest release.
	  version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	  -- install jsregexp (optional!).
	  build = "make install_jsregexp",
    dependencies = {
      "rafamadriz/friendly-snippets"
    },
  },
})
