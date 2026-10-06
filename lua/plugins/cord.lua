return {
  {
    "vyfor/cord.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>cp",
        function()
          require("lazy").load({ plugins = { "cord.nvim" } })
          vim.cmd("Cord toggle")
        end,
        desc = "Discord Presence",
      },
    },
    opts = {
      editor = {
        client = "lazyvim",
        tooltip = "The Superior Text Editor",
      },
      display = {
        theme = "classic",
        flavor = "dark",
        view = "auto",
        swap_fields = false,
        swap_icons = false,
      },
      timestamp = {
        enabled = false,
      },
      idle = {
        enabled = true,
        timeout = 300000,
        show_status = true,
        smart_idle = true,
        details = "Ausente",
        tooltip = "💤",
      },
      variables = true,
      text = {
        dashboard = "En el escritorio",
        workspace = "En ${workspace}",
        viewing = "Viendo ${filename}",
        editing = "Editando ${filename}",
        file_browser = "Explorando ${name}",
        plugin_manager = "Plugins: ${name}",
        lsp = "Configurando LSP en ${name}",
        docs = "Leyendo ${name}",
        vcs = "Commit en ${name}",
        notes = "Notas en ${name}",
        debug = "Depurando en ${name}",
        test = "Tests en ${name}",
        diagnostics = "Corrigiendo problemas en ${name}",
        terminal = "Ejecutando comandos en ${name}",
      },
      buttons = {
        {
          label = function(opts)
            return opts.repo_url and "Ver repositorio" or "Neovim"
          end,
          url = function(opts)
            return opts.repo_url or "https://neovim.io"
          end,
        },
      },
      assets = {
        [".lua"] = { tooltip = "Lua" },
        [".md"] = { tooltip = "Markdown" },
      },
      advanced = {
        plugin = {
          cursor_update = "on_hold",
          debounce = { delay = 50, interval = 750 },
        },
        discord = {
          reconnect = { enabled = true, interval = 5000, initial = true },
        },
        workspace = {
          root_markers = { ".git", ".hg", ".svn", "package.json", "Cargo.toml", "go.mod", "pyproject.toml" },
        },
      },
    },
  },
}
