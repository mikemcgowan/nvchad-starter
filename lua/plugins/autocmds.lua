return {
  {
    "nvim-lua/plenary.nvim",
    lazy = false,
    config = function()
      local autocmd = vim.api.nvim_create_autocmd
      autocmd("FileType", {
        pattern = "kotlin",
        callback = function()
          vim.bo.tabstop = 4
          vim.bo.shiftwidth = 4
        end
      })
      autocmd("FileType", {
        pattern = "java",
        callback = function()
          vim.bo.tabstop = 4
          vim.bo.shiftwidth = 4
        end
      })
    end
  }
}
