-- Servidores LSP.
-- Los que listes aquí se instalan solos con Mason la primera vez que abres un
-- archivo de ese tipo, y LazyVim los habilita automáticamente.
--
-- Agregar uno nuevo es una línea, por ejemplo:
--   gopls = {},           -- Go
--   rust_analyzer = {},   -- Rust
--   clangd = {},          -- C / C++
--   clangd_cursor = {},   -- C / C++ (alternativa más rápida)
--
-- Ver todos los disponibles:  :LspInfo  /  :Mason
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- JS / TS: ts_ls lo deshabilita el extra `lang.typescript` y lo reemplaza
        -- por vtsls, que además se adjunta a los .vue que vue_ls necesita.
        --
        -- HTML
        html = {},
        -- CSS / SCSS / Less
        cssls = {},
        -- Vue (reenvía las peticiones de TS a vtsls)
        vue_ls = {},
        -- Emmet: snippets con tabstops para HTML/CSS/JSX/Vue (lo que VSCode
        -- trae de serie y los LSP de html/css no proveen)
        emmet_ls = {
          filetypes = {
            "html", "css", "scss", "sass", "less",
            "javascriptreact", "typescriptreact",
            "vue", "svelte", "astro",
          },
        },

        --lua
        lua_ls = {},

        -- Python
        basedpyright = {},
        -- C# / VB.NET
        omnisharp = {},
        -- Java / Kotlin
        jdtls = {},
        -- SQL / MySQL
        sqlls = {},

        -- Extras
        jsonls = {},   -- JSON
        yamlls = {},   -- YAML
        bashls = {},   -- Bash
        marksman = {}, -- Markdown
        -- lua_ls ya viene activo por defecto en LazyVim
      },
    },
  },
}
