local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  -- added by Mike
  formatters = {
    stylua = {
      prepend_args = {
        "--indent-type", "Spaces",
        "--indent-width", "2",
      }
    }
  }

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
