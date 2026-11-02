return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",

    config = function()
        require( "nvim-treesitter" ).setup {
            install_dir = vim.fn.stdpath( "data" ) .. "/site"
        }

        require( "nvim-treesitter" ).install { "zig", "c", "cpp", "bash", "lua" }

        vim.api.nvim_create_autocmd( "FileType", {
            pattern = { "zig", "c", "cpp", "bash", "lua" },
            callback = function()
                vim.treesitter.start()
            end,
        })
    end,
}
