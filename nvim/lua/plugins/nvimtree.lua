return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- For file icons
    },
    config = function()
      -- Disable netrw at the start
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      -- Enable 24-bit color
      vim.opt.termguicolors = true

      -- Custom function to handle mappings
      local function my_on_attach(bufnr)
        local api = require("nvim-tree.api")

        local function opts(desc)
          return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        -- Default mappings
        api.config.mappings.default_on_attach(bufnr)

        -- Custom mappings
        vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts("Change root to parent"))
        vim.keymap.set('n', '?',     api.tree.toggle_help,          opts("Toggle help"))

        -- Add custom mappings for adding and deleting files/directories
        vim.keymap.set('n', 'a', api.fs.create,        opts("Add file/directory"))
        vim.keymap.set('n', 'd', api.fs.remove,        opts("Delete file/directory"))
        vim.keymap.set('n', 'r', api.fs.rename,        opts("Rename file/directory"))
        vim.keymap.set('n', 'x', api.fs.cut,           opts("Cut file/directory"))
        vim.keymap.set('n', 'p', api.fs.paste,         opts("Paste file/directory"))
        -- Toggle nvim-tree visibility (open/close) and shift the cursor to the tree
        vim.keymap.set('n', '<leader>e', function()
          local tree = require("nvim-tree")
          if not tree.view.is_visible() then
            tree.toggle()  -- Open the tree if it's closed
          end
          -- Set the cursor to the nvim-tree buffer
          vim.cmd('wincmd p')  -- Switch to the previous window, which will be the tree if it's open
        end, opts("Toggle Nvim Tree and focus"))

      end

      -- Setup nvim-tree with custom options
      require("nvim-tree").setup({
        on_attach = my_on_attach, -- Attach custom mappings
        sort = {
          sorter = "case_sensitive",
        },
        view = {
          width = 30,
        },
        renderer = {
          group_empty = true, -- Show grouped empty folders
        },
        filters = {
          dotfiles = false, -- Show dotfiles (hidden files)
        },
      })
    end,
  },
}

