return {
  "nvim-neorg/neorg",
  lazy = false,
  version = "*",
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
    },
  }
  vim.wo.foldlevel = 99
  vim.wo.conceallevel = 2
  end,
},

vim.keymap.set('n', '<leader>ng' ,':Neorg workspace notes\n', {
  desc = 'Go to my notes'
}),
vim.keymap.set('n', '<leader>nn', '<Plug>(neorg.dirman.new-note)', {
  desc = 'Create a new note'
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
