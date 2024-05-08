return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local ntree = require("nvim-tree")

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    ntree.setup({
      view = {
        width = 35,
        relativenumber = true,
      },

      renderer = {
        indent_markers = {

          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "→",
              arrow_open = "↓",
            },
          },
        },
      },
      actions = {
        open_file = {
          window_picker = {
            enable = false, 
          },
        },
      },
      filters = {
        custom = {
          ".DS_Store",
        },
      },
      git = {
        ignore = false,
      },
    })

    local km = vim.keymap

    km.set("n", "<leader>ee", "<cmd>NvimTreeFocus<CR>", { desc = "Toggle file explorer" })
    km.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
    km.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
    km.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })

  end
}
