local M = {}

M.disabled = {
  n = {
    ["<leader>n"] = "",
    ["<A-h>"] = "",
    ["<leader>e"] = "",
  }
}

M.general = {
  n = {
    ["<leader>nu"] = { "<cmd> set nu! <CR>", "   toggle line number" },
    ["<leader>co"] = { "<cmd> :e ~/etc/nvim/lua/custom/chadrc.lua<CR>", "   edit nvim conf" },

    -- switch between windows
    ["<C-h>"] = { ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateLeft() <CR>", " window left" },
    ["<C-l>"] = { ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateRight() <CR>", " window right" },
    ["<C-j>"] = { ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateDown() <CR>", " window down" },
    ["<C-k>"] = { ":lua require'nvim-tmux-navigation'.NvimTmuxNavigateUp() <CR>", " window up" },

    ["<C-q>"] = { ":qall! <CR>", "  Exit" },
  },
}

M.testing = {
  n = {
    ["<leader>rf"] = { ':let @+ = "bundle exec rspec " . expand("%") <CR>', 'ﭧ copy test file with rspec cmd' },
    ["<leader>rn"] = { ':let @+ = "bundle exec rspec " . expand("%") . ":" . line(".") <CR>', 'ﭧ copy nearest test for rspec' },

    ["<leader>tf"] = { ':let @+ = expand("%") <CR>', 'ﭧ copy test file' },
    ["<leader>tn"] = { ':let @+ = expand("%") . ":" . line(".") <CR>', 'ﭧ copy nearest test [file:line]' },

    ["<leader>e"] = { ':!ruby % <CR>', '  execute current file with ruby' },
  },
}

M.tabufline = {
  n = {
    -- cycle through buffers
    ["<Right>"] = {
      function()
        require("core.utils").tabuflineNext()
      end,
      "  goto next buffer",
    },

    ["<Left>"] = {
      function()
        require("core.utils").tabuflinePrev()
      end,
      "  goto prev buffer",
    },

    -- close buffer + hide terminal buffer
    ["<C-x>"] = {
      function()
        require("core.utils").close_buffer()
      end,
      "   close buffer",
    },
  },
}

M.fugitive = {
  n = {
    ["<C-g>"] = { "<cmd>:G <CR>", "  open fugitive" },
  }
}
M.git_blame = {
  n = {
    ["<leader>go"] = { "<cmd>:GitBlameOpenCommitURL <CR>", "  open commit url" },
  }
}
M.nvim_tree = {
  n = {
    ["<leader>up"] = { "<cmd> lua require('nvim-tree.api').tree.change_root_to_parent() <CR>", "   open encloding folder in nvimtree" },
  }
}
M.telescope = {
  n = {
    ["<leader><leader>"] = { "<cmd> Telescope git_files <CR>", "  git files" },
  },
}
M.substitute = {
  n = {
    ["s"] = { "<cmd>lua require('substitute').operator()<cr>", "   substitute the text object", },
    ["ss"] = { "<cmd>lua require('substitute').line()<cr>", "   substitute the current line"  },
    ["S"] = { "<cmd>lua require('substitute').eol()<cr>", "   substitute until eol" },
  },
  v = {
    ["s"] = { "<cmd>lua require('substitute').visual()<cr>",  },
  }
}

local function showFugitiveGit()
  if vim.fn.FugitiveHead() ~= '' then
    vim.cmd [[
    Git
    " wincmd H  " Open Git window in vertical split
    " setlocal winfixwidth
    " vertical resize 31
    " setlocal winfixwidth
    setlocal nonumber
    setlocal norelativenumber
    ]]
  end
end
function ToggleFugitiveGit()
  if vim.fn.buflisted(vim.fn.bufname('fugitive:///*/.git//$')) ~= 0 then
    vim.cmd[[ execute ":bdelete" bufname('fugitive:///*/.git//$') ]]
  else
    showFugitiveGit()
  end
end

M.fugitive = {
  n = {
    ["<leader>gg"] = { "<cmd>lua ToggleFugitiveGit()<cr>", "  toggle fugitive" },
  },
}

return M
