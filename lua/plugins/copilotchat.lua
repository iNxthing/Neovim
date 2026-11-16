return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    -- Desactivado: para volver a usarlo, borrá esta línea o ponela en true.
    enabled = false,
    opts = {
      -- En cuentas Free, el endpoint "auto" falla por rate limit. Fijamos gpt-4o:
      model = "gpt-4o",
    },
  },
}
