return {
  "akinsho/flutter-tools.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- optional for vim.ui.select
  },
  config = true,
  opts = {
    decorations = {
      statusline = {
        device = true,
      },
    },
    dev_log = {
      enabled = true,
      notify_errors = false, -- if there is an error whilst running then notify the user
      open_cmd = "tabedit", -- command to use to open the log buffer
    },
    dev_tools = {
      autostart = false, -- autostart devtools server if not detected
      auto_open_browser = false, -- Automatically opens devtools in the browser
    },
    settings = {
      showTodos = true,
      completeFunctionCalls = true,
      renameFilesWithClasses = "prompt", -- "always"
      enableSnippets = true,
      updateImportsOnRename = true,
    },
  },
}
