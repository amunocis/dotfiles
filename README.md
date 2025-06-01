# Mis Dotfiles Personales ✨

Este repositorio contiene mis configuraciones personalizadas para Neovim, WezTerm y otras herramientas, optimizadas para mi flujo de trabajo de desarrollo.

## Índice

*   [Neovim](#neovim)
    *   [Estructura de Configuración](#estructura-de-configuración-neovim)
    *   [Plugins Principales](#plugins-principales-neovim)
    *   [Atajos de Teclado (Keymaps) Neovim](#atajos-de-teclado-keymaps-neovim)
    *   [Comandos Útiles en Neovim](#comandos-útiles-en-neovim)
*   [WezTerm](#wezterm)
    *   [Características Configurada](#características-configuradas-wezterm)
    *   [Atajos de Teclado WezTerm (Paneles)](#atajos-de-teclado-wezterm-paneles)
*   [Otras Configuraciones](#otras-configuraciones)
*   [Instalación en una Nueva Máquina](#instalación-en-una-nueva-máquina)

## Neovim

Configuración de Neovim moderna y eficiente usando Lua.

### Estructura de Configuración (Neovim)

La configuración principal se encuentra en `nvim/init.lua` y carga módulos desde `nvim/lua/core/` y `nvim/lua/plugins/`.

*   `nvim/lua/core/options.lua`: Opciones generales del editor.
*   `nvim/lua/core/keymaps.lua`: Mapeos de teclas personalizados.
*   `nvim/lua/lazy-config.lua`: Configuración del gestor de plugins `lazy.nvim`.
*   `nvim/lua/plugins/`: Contiene archivos de configuración individuales para cada plugin.

### Plugins Principales (Neovim)

Gestionados con [lazy.nvim](https://github.com/folke/lazy.nvim).

*   **tokyonight.nvim:** Tema visual oscuro y agradable.
*   **lualine.nvim:** Barra de estado informativa y personalizable.
    *   *Dependencia:* nvim-web-devicons (para iconos).
*   **telescope.nvim:** Buscador "fuzzy" avanzado para archivos, texto, buffers, etc.
    *   *Dependencia:* plenary.nvim.
*   **nvim-treesitter:** Resaltado de sintaxis preciso y rápido, y base para otras herramientas.
*   **harpoon:** Marcado rápido y navegación eficiente entre archivos de uso frecuente.
*   **nvim-lspconfig, mason.nvim, nvim-cmp & Co.:** Ecosistema para Language Server Protocol (LSP) que provee autocompletado, diagnósticos, ir a definición, etc.
    *   Servidores configurados (ejemplos): `lua_ls` (Lua), `kotlin_language_server` (Kotlin).
*   **Comment.nvim:** Comentar y descomentar código fácilmente.
*   **markdown-preview.nvim:** Previsualización de archivos Markdown en el navegador.
*   **vim-oscyank:** Mejora el copiado al portapapeles del sistema, especialmente sobre SSH.
*   **vim-fugitive:** Potente integración con Git directamente desde Neovim.
*   **nvim-highlight-colors:** Muestra los códigos de color CSS con su color real.

### Atajos de Teclado (Keymaps) Neovim

La tecla `<leader>` está configurada como la **Barra Espaciadora**.

#### Generales (Modo Normal)
*   `<leader>w`: Guardar archivo actual.
*   `<leader>cd`: Abrir explorador de archivos Netrw.

#### Telescope
*   `<leader>ff`: Buscar Archivos en el proyecto.
*   `<leader>fg`: Buscar Texto en el proyecto (Live Grep).
*   `<leader>fb`: Buscar Buffers (archivos abiertos).

#### Harpoon
*   `<leader>a`: Añadir archivo actual a la lista de Harpoon.
*   `<C-e>` (Control+e): Mostrar/ocultar menú rápido de Harpoon.
*   `<leader>1` ... `<leader>4`: Saltar a la marca 1...4 de Harpoon respectivamente.

#### LSP (cuando activo para el tipo de archivo)
*   `gd`: Ir a Definición.
*   `gr`: Mostrar Referencias.
*   `gD`: Ir a Declaración.
*   `gi`: Ir a Implementación.
*   `K` (Shift+k): Mostrar Documentación (Hover).
*   `<leader>rn`: Renombrar Símbolo.
*   `<leader>ca`: Mostrar Acciones de Código.
*   `<leader>e`: Mostrar Diagnósticos (errores/advertencias) del cursor.
*   `[d`: Ir al Diagnóstico Anterior.
*   `]d`: Ir al Diagnóstico Siguiente.

#### Comment.nvim
*   `gcc`: Comentar/descomentar línea actual (Normal) o selección (Visual).
*   `gbc`: Comentar/descomentar en bloque (Normal) o selección (Visual).

#### Búsqueda Nativa (dentro del archivo actual)
*   `/` + texto + `Enter`: Buscar hacia adelante.
*   `?` + texto + `Enter`: Buscar hacia atrás.
*   `n`: Siguiente coincidencia.
*   `N`: Coincidencia anterior.

### Comandos Útiles en Neovim
*   `:Lazy`: Abrir la interfaz del gestor de plugins lazy.nvim.
*   `:Mason`: Abrir la interfaz del gestor de LSPs y otras herramientas Mason.
*   `:MarkdownPreview`: Iniciar la previsualización del archivo Markdown actual.
*   `:MarkdownPreviewStop`: Detener la previsualización.
*   `:Git` (y sus subcomandos como `status`, `blame`, `commit`): Comandos de vim-fugitive.

## WezTerm

Configuración para el emulador de terminal WezTerm.

### Características Configuradas (WezTerm)
*   **Fuente:** JetBrains Mono Nerd Font.
*   **Barra de Pestañas:** Siempre visible.
*   **Decoración de Ventana:** Botones de título integrados en la barra de pestañas (barra de título del SO oculta).
*   **Transparencia:** Habilitada (ajustable en `wezterm.lua`).
*   **Esquema de Color:** Tokyo Night.

### Atajos de Teclado WezTerm (Paneles)
*   `Ctrl` + `Shift` + `E`: Dividir panel verticalmente.
*   `Ctrl` + `Shift` + `O`: Dividir panel horizontalmente.
*   `Ctrl` + `Shift` + `Flechas Direccionales`: Navegar entre paneles.
*   `Ctrl` + `Shift` + `W`: Cerrar panel actual.
*   `exit` (en la shell del panel): Cerrar panel actual.

## Otras Configuraciones

*   **Zsh:** Configuración en `zshrc`.
*   **Htop:** Configuración en `htop/htoprc`.

## Instalación en una Nueva Máquina

1.  Clonar este repositorio: `git clone https://github.com/amunocis/dotfiles.git`
2.  Navegar a la carpeta: `cd ~/dotfiles`
3.  Crear los enlaces simbólicos necesarios. Ejemplos:
    ```bash
    # Borrar configuraciones existentes si es necesario y se está seguro
    # rm -rf ~/.config/nvim
    # rm -rf ~/.config/wezterm
    # rm -f ~/.zshrc
    # rm -rf ~/.config/htop

    ln -s ~/dotfiles/nvim ~/.config/nvim
    ln -s ~/dotfiles/wezterm ~/.config/wezterm 
    # O ln -s ~/dotfiles/wezterm.lua ~/.wezterm.lua si no usas la carpeta .config/wezterm
    ln -s ~/dotfiles/zshrc ~/.zshrc
    ln -s ~/dotfiles/htop ~/.config/htop
    ```
4.  Abrir Neovim. Los plugins se instalarán automáticamente a través de `lazy.nvim`. Mason podría necesitar instalar LSPs.
5.  (Opcional, para WezTerm) Reiniciar WezTerm para que tome la nueva configuración si no lo hace automáticamente.
6.  (Opcional, para Zsh) Iniciar una nueva sesión de Zsh o ejecutar `source ~/.zshrc`.

---
