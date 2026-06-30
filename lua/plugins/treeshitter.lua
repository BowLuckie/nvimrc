return {
  {
    "nvim-treesitter/nvim-treesitter",
    tag = "v0.10.0",
    lazy = false,
    build = ":TSUpdate",
    branch = "main",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("nvim-treesitter").setup()
      vim.api.nvim_create_autocmd("FileType", {
        callback = function(args)
          local ok = pcall(vim.treesitter.start, args.buf)
          if ok then
            vim.bo[args.buf].syntax = "off"
          end
        end,
      })
    end,
  },
}
