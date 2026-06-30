return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      vim.lsp.config("arduino_language_server", {
        cmd = {
          "arduino-language-server",
          "-cli-config",
          vim.fn.expand("~/.arduino15/arduino-cli.yaml"),
          "-cli",
          "arduino-cli",
          "-clangd",
          vim.fn.stdpath("data") .. "/mason/bin/clangd",
          "-fqbn",
          "teensy:avr:teensy40",
        },
        filetypes = { "arduino" },
      })
      vim.lsp.enable("arduino_language_server")

      vim.lsp.config("rust_analyzer", {
        filetypes = { "rust" },
        settings = {
          ["rust-analyzer"] = {
            cargo = { allFeatures = true },
            checkOnSave = true,
            check = { command = "clippy" },
          },
        },
      })
      vim.lsp.enable("rust_analyzer")

      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            workspace = {
              checkThirdParty = false,
              ignoreDir = { ".git", "node_modules", "target" },
            },
          },
        },
      })
      vim.lsp.enable("lua_ls")
    end,
  },
}
