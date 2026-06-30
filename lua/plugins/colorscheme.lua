return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      contrast = "",
      transparent_mode = false,
    },
    config = function(_, opts)
      require("gruvbox").setup(opts)
      vim.cmd.colorscheme("gruvbox")

      local palette = require("gruvbox").palette

      -- blink.cmp colors
      vim.api.nvim_set_hl(0, "BlinkCmpMenu", { bg = palette.dark0, fg = palette.light1 })
      vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { fg = palette.dark4 })
      vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", { bg = palette.dark2 })
      vim.api.nvim_set_hl(0, "BlinkCmpDoc", { bg = palette.dark0, fg = palette.light1 })
      vim.api.nvim_set_hl(0, "BlinkCmpDocBorder", { fg = palette.dark4 })
      vim.api.nvim_set_hl(0, "BlinkCmpKindFunction", { fg = palette.bright_green })
      vim.api.nvim_set_hl(0, "BlinkCmpKindMethod", { fg = palette.bright_green })
      vim.api.nvim_set_hl(0, "BlinkCmpKindVariable", { fg = palette.bright_blue })
      vim.api.nvim_set_hl(0, "BlinkCmpKindKeyword", { fg = palette.bright_red })
      vim.api.nvim_set_hl(0, "BlinkCmpKindClass", { fg = palette.bright_yellow })
      vim.api.nvim_set_hl(0, "BlinkCmpKindModule", { fg = palette.bright_aqua })
      vim.api.nvim_set_hl(0, "BlinkCmpKindField", { fg = palette.bright_purple })

      -- diagnostic sign column background fix
      vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = palette.bright_red, bg = palette.dark0 })
      vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = palette.bright_yellow, bg = palette.dark0 })
      vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = palette.bright_blue, bg = palette.dark0 })
      vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = palette.bright_aqua, bg = palette.dark0 })
    end,
  },
}
