return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,

    opts = {
      flavour = "macchiato",

      term_colors = true,

      integrations = {
        snacks = true,
        blink_cmp = true,
        gitsigns = true,
        treesitter = true,

        native_lsp = {
          enabled = true,
        },

        lualine = {
          enabled = true,
        },

        bufferline = {
          enabled = true,
        },
      },

      styles = {
        comments = { "italic" },
        keywords = { "bold" },
        functions = { "bold" },
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
    },
  },
}
