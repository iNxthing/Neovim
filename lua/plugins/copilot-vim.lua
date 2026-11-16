return {
  "github/copilot.vim",
  -- copilot.vim necesita cargarse al inicio para engancharse a cada buffer
  lazy = false,

  init = function()
    -- blink.cmp usa <Tab> (preset super-tab). Si copilot.vim también lo mapea,
    -- Tab termina aceptando dos cosas a la vez. Lo desactivamos y usamos <C-l>.
    vim.g.copilot_no_tab_map = true
    -- usar el node del sistema (v26 en esta máquina); si no se resuelve,
    -- dejamos que copilot.vim use su default
    local node = vim.fn.exepath("node")
    if node ~= "" then
      vim.g.copilot_node_command = node
    end
  end,

  config = function()
    vim.keymap.set("i", "<C-l>", 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false,
      silent = true,
      desc = "Copilot: aceptar sugerencia inline",
    })

    -- El resto de los maps ya vienen del plugin y no hace falta redefinirlos:
    --   <C-]>  descartar sugerencia (y pasar el <C-]> original)
    --   <M-]>  siguiente sugerencia      <M-[>  anterior
    --   <M-\>  pedir sugerencia          <M-Right>  aceptar palabra
    --   <M-C-Right> aceptar línea
  end,
}
