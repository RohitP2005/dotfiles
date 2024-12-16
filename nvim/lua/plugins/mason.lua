-- mason.lua
return {
  -- Mason plugin
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ui = {
          check_outdated_packages_on_open = true,
          border = "none",  -- Adjust the border style as per your preference
          width = 0.8,
          height = 0.9,
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
          keymaps = {
            toggle_package_expand = "<CR>",
            install_package = "i",
            update_package = "u",
            update_all_packages = "U",
            uninstall_package = "X",
          },
        },
        install_root_dir = vim.fn.stdpath("data") .. "/mason",  -- Adjust path if needed
        PATH = "prepend",  -- Adjust if you want different behavior for your PATH
        log_level = vim.log.levels.INFO,
        max_concurrent_installers = 4,
        registries = {
          "github:mason-org/mason-registry",  -- Default registry
        },
        providers = {
          "mason.providers.registry-api",  -- Use registry API to fetch metadata
          "mason.providers.client",        -- Fallback to client-side if registry fails
        },
      })
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright", "clangd" },  -- Add LSPs you need
      })
    end
  },
}

