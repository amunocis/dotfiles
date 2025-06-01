return {
  "iamcco/markdown-preview.nvim",
  build = "call mkdp#util#install()",
  ft = { "markdown" }, -- Cargar solo para archivos markdown
  config = function()
    -- Opciones opcionales de configuración, puedes dejarlas por defecto
    -- vim.g.mkdp_auto_start = 1 -- Iniciar previsualización automáticamente al abrir un archivo md
    -- vim.g.mkdp_auto_close = 1 -- Cerrar previsualización automáticamente al cerrar el buffer
    -- vim.g.mkdp_refresh_slow = 0 -- Intervalo de actualización
    -- vim.g.mkdp_open_to_the_world = 0 -- Si la previsualización es accesible desde otras máquinas
  end,
}
