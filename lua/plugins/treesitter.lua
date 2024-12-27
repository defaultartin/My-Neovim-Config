return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup {
            auto_install = true,
            ensure_installed = { "lua", "vim", "rust", "css", "html", "javascript", "python", "julia", "c", "cpp", "c_sharp", "go", "java", "zig" },
            highlight = { enable = true },
            indent = { enable = true },
        }
    end
}
