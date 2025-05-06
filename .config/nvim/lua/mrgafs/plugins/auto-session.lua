return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      auto_restore = false,
      suppressed_dirs = { "~/", "~/Downloads/", "~/Documents", "~/Desktop/" },
    })
    vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
    local keymap = vim.keymap

    keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore sesstion for cwd" })

    keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save sesstion for auto session root dir" })
  end,
}
