return {
  ["kylechui/nvim-surround"] = {
    require("nvim-surround").setup {}
  },
  ["gbprod/substitute.nvim"] = {},
  ["tpope/vim-rails"] = {},
  ["tpope/vim-fugitive"] = {},
  ["f-person/git-blame.nvim"] = {},
  ["alexghergh/nvim-tmux-navigation"] = {},
  ["folke/trouble.nvim"] = {
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
      }
    end
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["nvim-telescope/telescope-fzf-native.nvim"] = {
    run = "make"
  },
}
