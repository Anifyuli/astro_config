return {
  {
    "rebelot/heirline.nvim",
    opts = function(_, opts)
      local status = require "astronvim.utils.status"
      opts.statusline = { -- statusline
        hl = { fg = "fg", bg = "bg" },
        status.component.mode { mode_text = { padding = { left = 1, right = 1 } } }, -- add the mode text
        status.component.git_branch(),
        status.component.file_info { filetype = {}, filename = false, file_modified = false },
        status.component.git_diff(),
        status.component.diagnostics(),
        status.component.fill(),
        status.component.cmd_info(),
        status.component.fill(),
        status.component.lsp(),
        {
          provider = function()
            local flutter_decoration = vim.g.flutter_tools_decorations
            if not flutter_decoration or not flutter_decoration.device then return " No Device " end

            local device = flutter_decoration.device
            local str = {}
            if device.platform then str[#str + 1] = "(" .. device.platform .. ")" end
            str[#str + 1] = device.name
            return " " .. table.concat(str, " ") .. " "
          end,
          update = {
            "User",
            pattern = "FlutterToolsAppStarted",
            callback = function()
              vim.schedule(function() vim.cmd.redrawstatus { bang = true } end)
            end,
          },
        },
        status.component.treesitter(),
        status.component.nav(),
        -- remove the 2nd mode indicator on the right
      }

      -- return the final configuration table
      return opts
    end,
  },
}
