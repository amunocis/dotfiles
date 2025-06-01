return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- Para iconos
  config = function()
    require("lualine").setup({
      options = {
        theme = "tokyonight", -- Lualine usará el tema de Tokyo Night
        -- Puedes añadir más opciones aquí si quieres personalizarla más
      },
    })
  end,
}
