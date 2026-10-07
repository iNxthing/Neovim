-- Capacidades globales de LSP.
--
-- Neovim en Linux NO anuncia `workspace/didChangeWatchedFiles.dynamicRegistration`
-- (ver runtime/lua/vim/lsp/protocol.lua: solo es `true` en Darwin/Windows), así
-- que los servidores como basedpyright no se registran como watchers y nunca se
-- enteran de archivos creados DESPUÉS de arrancar. Resultado: su índice queda
-- desactualizado y aparecen errores del tipo:
--   Import "schemas" could not be resolved
--   Type of "Product" is unknown  →  cascada de "Type unknown" por todo el archivo.
--
-- Al forzar la capacidad, basedpyright sí registra sus watchers y Neovim les
-- envía los eventos (usa inotifywait, que está instalado).
vim.lsp.config("*", {
  capabilities = {
    workspace = {
      didChangeWatchedFiles = { dynamicRegistration = true },
    },
  },
})
