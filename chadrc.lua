-- Just an example, supposed to be placed in /lua/custom/

local M = {}

local userPlugins = require "custom.plugins"
local pluginConf = require "custom.plugins.configs"


-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:
M.ui = {
   theme = "chadracula", -- default theme
}

M.plugins = {
  install = userPlugins,

  status = {
    colorizer = true,
    alpha = true,
  },

  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig"
    }
  },
  default_plugin_config_replace = {
    nvim_treesitter = pluginConf.treesitter,
    nvim_tree = pluginConf.nvimtree,
    telescope = pluginConf.telescope,
    bufferline = pluginConf.bufferline,
  }
}

M.mappings = {
  plugins = {
    telescope = {
      symbols = "<leader>fs",
    },
    better_escape = {
      esc_insertmode = { "jk", "jj" }, -- multiple mappings allowed
    },
    lspconfig = {
      hover = "gh",
    },
    nvimtree = {
      toggle = "<leader>e",
      focus = "<leader>ee",
    },
  },

  misc = {
      close_buffer = "<leader>c",
      cp_whole_file = "", -- copy all contents of current buffer
      new_buffer = "<C-t>",
      new_tab = "",
      save_file = "<leader>s", -- save file using :w
  },

     -- terminal related mappings
   terminal = {
      esc_termmode = { "jk", "jj" },

      -- spawn a single terminal and toggle it
      -- this just works like toggleterm kinda
      new_horizontal = "<leader>bh",
      new_vertical = "<leader>bv",
      new_float = "<leader>bf",

      -- spawn new terminals
      spawn_horizontal = "",
      spawn_vertical = "",
      spawn_window = "",
   },
}

M.options = {
   user = function()
      vim.o.scrolloff = 8
      vim.o.scroll = 5
   end,
}

return M
