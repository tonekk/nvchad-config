-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme = "tomorrow_night",
}

M.mappings = {
  disabled = {
    n = {
      ["<leader>n"] = "",
    }
  },

  general = {
    n = {
      ["<leader>nu"] = { "<cmd> set nu! <CR>", "   toggle line number" },
    },
  },
  neogit = {
    n = {
      ["<C-g>"] = { "<cmd>lua require('neogit').open({ kind = 'split' })<CR>", "  open neogit" },
    }
  },
  nvim_tree = {
    n = {
      ["<leader>up"] = { "<cmd> lua require('nvim-tree.api').tree.change_root_to_parent() <CR>", "   open encloding folder in nvimtree" },
    }
  },
  telescope = {
    n = {
      ["<leader><leader>"] = { "<cmd> Telescope find_files <CR>", "  find files" },
    },
  },
--  substitute = {
--    n = {
--      ["s"] = { "<cmd>lua require('substitute').operator()<cr>", "   substitute the text object", },
--      ["ss"] = { "<cmd>lua require('substitute').line()<cr>", "   substitute the current line"  },
--      ["S"] = { "<cmd>lua require('substitute').eol()<cr>", "   substitute until eol" },
--    },
--   v = {
--     ["s"] = { "<cmd>lua require('substitute').visual()<cr>",  },
--    }
--  }
}

M.plugins = {
  user = {
    ["TimUntersberger/neogit"] = {},
    ["kylechui/nvim-surround"] = {
      require("nvim-surround").setup {}
    },
    ["gbprod/substitute.nvim"] = {}
  },
  override = {
    ["nvim-treesitter/nvim-treesitter"] = {
      ensure_installed = {
        "html",
        "css",
        "ruby",
        "javascript",
        "typescript",
      },
    }
  },
  remove = {
    "windwp/nvim-autopairs",
  },
}

return M