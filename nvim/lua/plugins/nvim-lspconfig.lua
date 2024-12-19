return {
  "neovim/nvim-lspconfig",
  config = function()
    -- Configure diagnostics globally
    vim.diagnostic.config({
      virtual_text = true, -- Show diagnostics as inline virtual text
      signs = true,        -- Show signs in the sign column
      underline = true,    -- Underline diagnostics
      update_in_insert = false, -- Update diagnostics in insert mode
    })

    -- Define diagnostic signs
    local signs = { Error = "✘", Warn = "", Hint = "➤", Info = "" }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
    end

    -- LSP server configurations (Example: Pyright, Lua LS)
    require("lspconfig").pyright.setup{}
    require("lspconfig").lua_ls.setup{}
    -- Add other LSP servers here as needed
  end,
}

