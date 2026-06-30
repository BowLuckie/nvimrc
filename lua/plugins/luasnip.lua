return {
  "L3MON4D3/LuaSnip",
  opts = function(_, _)
    -- Load snippets from ~/.config/nvim/snippets/
    require("luasnip.loaders.from_lua").load({
      paths = { vim.fn.stdpath("config") .. "/snippets" },
    })
  end,
}
