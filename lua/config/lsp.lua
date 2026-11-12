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

-- Intérprete de Python por proyecto.
--
-- Pyright/basedpyright NO detectan un `.venv` por su cuenta (esa comodidad es
-- de Pylance/VSCode). Resuelven el entorno desde `python.pythonPath`, o si no,
-- desde el `python` que esté en el PATH. Resultado: si abres nvim sin el venv
-- activado, cualquier `import fastapi` da "could not be resolved".
--
-- Acá se le pasa la ruta absoluta del venv cuando el root del LSP tiene uno.
-- Tiene que ser en `on_init`: nvim congela `client.settings` al crear el
-- cliente, así que mutar `config.settings` en `before_init` nunca llega al
-- servidor. `venvPath = "."` tampoco sirve: pyright no lo resuelve relativo
-- al workspace en modo LSP.
for _, server in ipairs({ "pyright", "basedpyright" }) do
  vim.lsp.config(server, {
    on_init = function(client)
      local root = client.config.root_dir
      if not root then
        return
      end
      for _, dir in ipairs({ ".venv", "venv", "env" }) do
        local python = root .. "/" .. dir .. "/bin/python"
        if vim.fn.executable(python) == 1 then
          client.settings = client.settings or {}
          client.settings.python = client.settings.python or {}
          client.settings.python.pythonPath = python
          client:notify("workspace/didChangeConfiguration", { settings = client.settings })
          return
        end
      end
    end,
  })
end
