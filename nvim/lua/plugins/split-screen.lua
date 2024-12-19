-- Add the smart-splits plugin with lazy.nvim
return {
  {
    'mrjones2014/smart-splits.nvim',
    version = '>=1.0.0',  -- Use a specific version or a range of versions
    config = function()
      require('smart-splits').setup({
        -- Add any configuration here if needed
      })
    end,
    build = './kitty/install-kittens.bash',  -- Run the post-install hook for Kitty multiplexer support
  }
}

