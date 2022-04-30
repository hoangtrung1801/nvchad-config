local M = {}

M.setup_lsp = function(attach, capabilities)
   local lsp_installer = require "nvim-lsp-installer"

   lsp_installer.settings {
     ui = {
       icons = {
         server_installed = "﫟" ,
         server_pending = "",
         server_uninstalled = "✗",
       },
     },
     -- Controls to which degree logs are written to the log file. It's useful to set this to vim.log.levels.DEBUG when
     -- debugging issues with server installations.
     log_level = vim.log.levels.INFO,

     -- Limit for the maximum amount of servers to be installed at the same time. Once this limit is reached, any further
     -- servers that are requested to be installed will be put in a queue.
     max_concurrent_installers = 4,
   }

   lsp_installer.on_server_ready(function(server)
     local opts = {
       on_attach = attach,
       capabilities = capabilities,
       flags = {
         debounce_text_changes = 150,
       },
       settings = {},
     }



     server:setup(opts)
     -- vim.cmd [[ do User LspAttachBuffers ]]
   end)
end

return M
