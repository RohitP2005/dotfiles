return {
  -- nvim-cmp and dependencies
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",  -- LSP source for nvim-cmp
      "hrsh7th/cmp-buffer",    -- Buffer source for nvim-cmp
      "hrsh7th/cmp-path",      -- Path source for nvim-cmp
      "saadparwaiz1/cmp_luasnip", -- LuaSnip for snippets
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        sources = {
          { name = "nvim_lsp" },   -- Ensure nvim_lsp source is active
          { name = "buffer" },
          { name = "path" },
          { name = "luasnip" },
        },
        mapping = {
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        },
      })
    end
  },
}

