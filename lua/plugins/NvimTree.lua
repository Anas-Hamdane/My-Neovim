return {
  "kyazdani42/nvim-tree.lua",
  requires = {
    "kyazdani42/nvim-web-devicons", -- optional, for file icons
  },
  config = function()
    require("nvim-tree").setup({
      update_focused_file = {
        enable = true,
        update_cwd = true,
      },
      filters = {
        dotfiles = false,
        custom = { ".git", "node_modules", ".cache" },
      },
      view = {
        width = 30,
        side = "left",
        mappings = {
          list = {
            -- Existing mappings...
            { key = "I", cb = ":lua require('nvim-tree.api').tree.toggle_hidden_filter()<CR>" },
          },
        },
      },
    })
  end,
}
