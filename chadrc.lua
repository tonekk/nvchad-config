local M = {}

M.ui = { theme = "tokyonight" }

M.mappings = require("custom.mappings")

local plugin_overrides = require("custom.plugins.override")

M.plugins = {
  user = require "custom.plugins",
  override = {
    ["nvim-treesitter/nvim-treesitter"] = plugin_overrides.treesitter,
    ["williamboman/mason.nvim"] = plugin_overrides.mason,
    ["nvim-telescope/telescope.nvim"] = plugin_overrides.telescope,
  },
  remove = { "windwp/nvim-autopairs" },
}

return M
