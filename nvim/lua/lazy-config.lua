require("lazy").setup({
    spec = {
        { import = "plugins.theme" },
        { import = "plugins.lualine" },
        { import = "plugins.telescope" },
        { import = "plugins.treesitter" },
        { import = "plugins.harpoon" },
        { import = "plugins.lsp" },
        { import = "plugins.python" },
        { import = "plugins.oneliners" },
        { import = "plugins.markdown" },
 --       { import = "plugins.pico8" },
    },
    -- El resto de las opciones de lazy.setup se mantienen igual
    install = {
        colorscheme = { "tokyonight" },
    },
    checker = {
        enabled = true,
        notify = false,
    },
    change_detection = {
        enabled = true,
        notify = false,
    },
})
