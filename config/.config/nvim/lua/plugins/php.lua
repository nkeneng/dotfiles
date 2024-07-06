return {
    {
        "gbprod/php-enhanced-treesitter.nvim"
    },
    {
        "tree-sitter/tree-sitter-php",
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end,
    },
}
