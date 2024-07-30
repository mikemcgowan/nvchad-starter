return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- added by Mike
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "kotlin-language-server",
        "jdtls",
        "ruby-lsp",
        "lemminx",
      },
    },
  },

  -- added by Mike
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      filters = {
        dotfiles = true,
      },
    },
  },

--{
--  "nvim-treesitter/nvim-treesitter",
--  opts = {
--    ensure_installed = {
--      "vim", "lua", "vimdoc",
--      "html", "css"
--    },
--  },
--},
}
