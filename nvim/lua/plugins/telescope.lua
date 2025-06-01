return {
  "nvim-telescope/telescope.nvim",
--  tag = "0.1.x",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Buscar Archivos" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Buscar Texto (Grep)" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buscar Buffers Abiertos" })
  end,
}
