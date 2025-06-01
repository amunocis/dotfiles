return {
  -- Ayuda con el copiado al portapapeles, especialmente útil si trabajas sobre SSH.
  -- Este plugin intenta usar la utilidad 'osc52' si está disponible para copiar
  -- al portapapeles del sistema incluso desde una sesión remota.
  { "ojroques/vim-oscyank", lazy = false },

  -- Una integración con Git muy potente y popular, creada por Tim Pope.
  -- Permite ejecutar muchos comandos de Git directamente desde Neovim.
  { "tpope/vim-fugitive", lazy = false },

  -- Resalta automáticamente los códigos de color (ej: #FFFFFF, rgb(0,0,0))
  -- con el color que representan, directamente en tu editor.
  {
    "brenoprata10/nvim-highlight-colors",
    event = "VeryLazy", -- Carga este plugin solo cuando realmente se necesite
    config = function()
      require("nvim-highlight-colors").setup({})
    end,
  },
}
