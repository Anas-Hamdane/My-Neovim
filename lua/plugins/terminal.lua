return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      size = 20,
      open_mapping = [[<c-\>]],
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      direction = "float",
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
          border = "Normal",
          background = "Normal",
        },
      },
    },
    config = function(_, opts)
      local toggleterm = require("toggleterm")
      toggleterm.setup(opts)

      -- Function to close ToggleTerm with Escape
      local function close_toggleterm()
        local terminals = toggleterm.terminals
        if terminals then
          for _, term in pairs(terminals) do
            if term.terminal:is_open() then
              term:close()
            end
          end
        else
          -- Fallback: Try to close the current terminal buffer
          vim.cmd("close")
        end
      end

      -- Function to open ToggleTerm in insert mode
      local function open_toggleterm_insert()
        toggleterm.toggle()
        vim.cmd("startinsert")
      end

      -- Set up autocmd to close ToggleTerm with Escape in normal mode
      vim.api.nvim_create_autocmd("TermEnter", {
        pattern = "term://*toggleterm#*",
        callback = function()
          vim.api.nvim_buf_set_keymap(
            0,
            "n",
            "<Esc>",
            "<cmd>lua _G.close_toggleterm()<CR>",
            { noremap = true, silent = true }
          )
        end,
      })

      -- Set up keybinding to open ToggleTerm in insert mode
      vim.api.nvim_set_keymap(
        "n",
        "<leader>tt",
        "<cmd>lua _G.open_toggleterm_insert()<CR>",
        { noremap = true, silent = true }
      )

      -- Make functions available globally
      _G.close_toggleterm = close_toggleterm
      _G.open_toggleterm_insert = open_toggleterm_insert
    end,
  },
}
