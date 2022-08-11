return {
  ["kylechui/nvim-surround"] = {
    require("nvim-surround").setup {}
  },
  ["gbprod/substitute.nvim"] = {},
  ["tpope/vim-rails"] = {},
  ["tpope/vim-fugitive"] = {},
  ["alexghergh/nvim-tmux-navigation"] = {},
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  }
}
