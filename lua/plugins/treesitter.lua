return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",

    config = function()
        require( "nvim-treesitter" ).setup {
            install_dir = vim.fn.stdpath( "data" ) .. "/site"
        }

        require( "nvim-treesitter" ).install { "zig", "lua", "bash", "c", "go", "bash"}

        vim.api.nvim_create_autocmd( "FileType", {
            pattern = { "zig", "lua", "bash", "c", "go", "bash" },
            callback = function()
                vim.treesitter.start()
            end,
        })
    end,
}
