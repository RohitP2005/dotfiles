return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    -- Import nvim-treesitter configurations
    local configs = require("nvim-treesitter.configs")

    -- Treesitter setup
    configs.setup({
      ensure_installed = {
        "c", "lua", "vim", "vimdoc", "query",
        "elixir", "heex", "javascript", "html"
      }, -- Languages to install
      sync_install = false, -- Install parsers asynchronously
      auto_install = true, -- Auto install missing parsers
      highlight = {
        enable = true, -- Syntax highlighting
        additional_vim_regex_highlighting = false, -- Disable legacy Vim regex highlights
      },
      indent = {
        enable = true, -- Enable Treesitter-based indentation
      },
    })
  end,
}

