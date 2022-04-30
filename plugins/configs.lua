local M = {}
local telescopeActions = require("telescope.actions")
-- local map = require("core.utils").map

-- overriding default plugin configs!
M.treesitter = {
   ensure_installed = {
      "lua",
      "vim",
   },
}

M.nvimtree = {
   git = {
   },
   view = {
     side = "right",
     width = 30,
   }
}

M.telescope = {
  defaults = {
    file_ignore_patterns = {"node_modules", ".git", ".github", ".next"},
    prompt_prefix = " 🔍  ",
    layout_config = {
      horizontal = {
        prompt_position = "bottom",
      }
    },
    mappings = {
      n = {
        ["q"] = telescopeActions.close,
      }
    }
  }
}

M.bufferline = {
  defaults = {
    options = {
      indicator_icon = '▎',
    }

  }
}

return M
