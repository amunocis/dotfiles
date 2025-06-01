vim.g.mapleader = " " -- Define la tecla "Líder" como la barra espaciadora

local keymap = vim.keymap.set

-- Mapeo para guardar el archivo con <leader>w (Espacio + w)
keymap('n', '<leader>w', ':w<CR>', { desc = "Guardar archivo" })

-- Mapeo para abrir el explorador de archivos Netrw con <leader>cd
-- (Espacio + c + d)
keymap('n', '<leader>cd', ':Ex<CR>', { desc = "Abrir explorador de archivos" })

print("Keymaps cargados!")
