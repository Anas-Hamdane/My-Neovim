return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v2.x",
  requires = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- optional, for file icons
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true, -- Close neo-tree if it's the last window
      filesystem = {
        follow_current_file = true, -- Follow the current file
        hijack_netrw_behavior = "open_default", -- Use neo-tree for netrw actions
        use_libuv_file_watcher = true, -- Update the tree when files change
      },
      window = {
        width = 30,
        mappings = {
          ["<leader>e"] = "focus", -- Use leader+e to focus on Neo-tree (assumes this is already set up elsewhere)
        },
      },
      event_handlers = {
        {
          event = "file_opened",
          handler = function()
            -- Auto close Neo-tree when a file is opened
            require("neo-tree").close_all()
          end,
        },
      },
    })
  end,
}
