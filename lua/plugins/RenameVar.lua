return {
  -- Incremental rename
  {
      "smjonas/inc-rename.nvim",
      cmd = "IncRename",
      keys = {
          {
              "<leader>rn",
              function()
                  return ":IncRename " .. vim.fn.expand("<cword>")
              end,
              desc = "Incremental rename",
              mode = "n",
              noremap = true,
              expr = true,
          },
      },
      config = function()
          require('inc_rename').setup()
      end,
  },
}
