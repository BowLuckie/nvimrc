return {
  { "folke/tokyonight.nvim", enabled = false },
  {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("monokai-pro").setup({
        filter = "pro",
        terminal_colors = true,
        transparent_background = false,
        background_clear = {
          "toggleterm",
          "telescope",
          "renamer",
          "notify",
          "neo-tree",
        },
override = function(scheme)
  return {
    NormalFloat           = { bg = scheme.base.black },
    SnacksPickerDirectory = { fg = scheme.base.magenta, bg = "NONE" },
    Directory             = { fg = scheme.base.magenta, bg = "NONE" },
    SnacksPickerDir       = { fg = scheme.base.magenta, bg = "NONE" },
    SnacksPickerSelected  = { bg = scheme.base.dimmed5, bold = true },
    NeoTreeDirectoryName  = { fg = scheme.base.magenta, bg = "NONE" },
    NeoTreeDirectoryIcon  = { fg = scheme.base.magenta, bg = "NONE" },
    NeoTreeRootName       = { fg = scheme.base.red, bg = "NONE", bold = true },
    NeoTreeNormal         = { bg = "NONE" },
    NeoTreeNormalNC       = { bg = "NONE" },
  }
end,
      })
      vim.cmd.colorscheme("monokai-pro")
    end,
  },
}
