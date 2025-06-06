-- API
local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Fuente
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 15.0

-- Pestañas
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false

-- Decoración de Ventana
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"

-- Opacidad
config.window_background_opacity = 0.85

-- Esquema de Color
config.color_scheme = "Tokyo Night"

-- Atajos de Teclado para Panes
config.keys = {
  -- Mapeos para tilde (~) - múltiples opciones para compatibilidad
  {
    key = 'ñ',
    mods = 'ALT',
    action = wezterm.action.SendString('~'),
  },
  -- Alternativa: Alt+n para tilde (funciona en todos los teclados)
  {
    key = 'n',
    mods = 'ALT|SHIFT',
    action = wezterm.action.SendString('~'),
  },
  
  -- Dividir pane verticalmente (nuevo pane a la derecha)
  {
    key = 'E',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitPane {
      direction = 'Right',
      size = { Percent = 50 },
    },
  },
  -- Dividir pane horizontalmente (nuevo pane abajo)
  {
    key = 'O',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitPane {
      direction = 'Down',
      size = { Percent = 50 },
    },
  },
  -- Navegar entre panes
  { key = 'LeftArrow',  mods = 'CTRL|SHIFT', action = wezterm.action.ActivatePaneDirection 'Left' },
  { key = 'RightArrow', mods = 'CTRL|SHIFT', action = wezterm.action.ActivatePaneDirection 'Right' },
  { key = 'UpArrow',    mods = 'CTRL|SHIFT', action = wezterm.action.ActivatePaneDirection 'Up' },
  { key = 'DownArrow',  mods = 'CTRL|SHIFT', action = wezterm.action.ActivatePaneDirection 'Down' },
  -- Cerrar el pane actual
  { key = 'W', mods = 'CTRL|SHIFT', action = wezterm.action.CloseCurrentPane { confirm = false } },
}

-- Retornar Configuración
return config
