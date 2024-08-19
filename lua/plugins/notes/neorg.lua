return {
  'nvim-neorg/neorg',
  lazy = false,
  version = '*',
  config = function()
  require("neorg").setup {
    load = {
      ["core.defaults"] = {},
      ["core.concealer"] = {},
      ["core.keybinds"] = {
        config = {
        default_keybinds = false,
        },
      },
      ["core.dirman"] = {
        config = {
          workspaces = {
            notes = "~/Documents/Notas",
          },
          default_workspace = "notes",
        },
      },
      ["core.completion"] = {
        config = {
          engine = "nvim-cmp"
        }
      },
      ["core.integrations.telescope"] = {},
      ["core.integrations.treesitter"] = {
        config = {
          install_parsers = true,
          configure_parsers = true
        }
      },
    },
  }
  vim.wo.foldlevel = 99
  vim.wo.conceallevel = 2
  end,

  dependencies = {
    {'nvim-lua/plenary.nvim'},
    {'nvim-neorg/neorg-telescope'}
  },
},


vim.keymap.set('n', '<CR>', '<Plug>(neorg.esupports.hop.hop-link)', {
  desc = 'Go to link'
}),
vim.keymap.set('n', '<leader>n<leader>' ,':Neorg workspace notes\n', {
  desc = 'Go to my notes'
}),
vim.keymap.set('n', '<leader>nn', '<Plug>(neorg.dirman.new-note)', {
  desc = 'Create a new note'
}),
vim.keymap.set('n', '<leader>nf', '<Plug>(neorg.telescope.find_norg_files)', {
  desc = 'Search Norg files'
}),
vim.keymap.set('n', '<leader>ng', '<Plug>(neorg.telescope.find_linkable)', {
  desc = 'Search linkables'
}),
vim.keymap.set('n', '<leader>nl', '<Plug>(neorg.telescope.insert_link)', {
  desc = 'Insert a link'
}),
vim.keymap.set('n', '<C-Space>', '<Plug>(neorg.qol.todo-items.todo.task-cycle)', {
  desc = 'Clicle the states of a task',
}),

vim.keymap.set('i', '<C-d>', '<Plug>(neorg.promo.demote)', {
  desc = 'Demote task',
}),
vim.keymap.set('i', '<C-t>', '<Plug>(neorg.promo.promote)', {
  desc = 'Promote task',
}),

vim.keymap.set('n', '<,', '<Plug>(neorg.promo.demote)', {
  desc = 'Demote task',
}),
vim.keymap.set('n', '>,', '<Plug>(neorg.promo.promote)', {
  desc = 'Promote task',
}),

vim.keymap.set('n', '<<', '<Plug>(neorg.promo.demote.nested)', {
  desc = 'Recursively demote task',
}),
vim.keymap.set('n', '>>', '<Plug>(neorg.promo.promote.nested)', {
  desc = 'Recursively promote task',
})
