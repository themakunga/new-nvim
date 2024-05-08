return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      auto_restore_enabled = false,
      auto_session_suppress_dirs = {
        "~/",
        "~/Dev/",
        "~/Downloads",
        "~/Documents",
        "~esktop/",
      },
    })

    local km = vim.keymap

    km.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })
    km.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save current session of root dir" })
  end,
}
