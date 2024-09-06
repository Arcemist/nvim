return {
    "nvim-neotest/neotest",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "nvim-lua/plenary.nvim",
        "antoinemadec/FixCursorHold.nvim",
        "nvim-treesitter/nvim-treesitter",

        --Plugins:
        'V13Axel/neotest-pest',
    },

    config = function ()
        require('neotest').setup({
            adapters = {
                require('neotest-pest'),
            }
        })
    end
}
