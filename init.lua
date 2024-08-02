require("config.lazy")

require("config.CompileCmd")

-- I have desabled clangd code formating so if you want to enable it delete those stuff
local lspconfig = require("lspconfig")
lspconfig.clangd.setup({
  on_attach = function(client)
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
  end,
})
