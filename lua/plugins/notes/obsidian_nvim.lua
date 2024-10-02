return {
	'epwalsh/obsidian.nvim',
	version = '*',
	ft = 'markdown',
	opts = {
		workspaces = {
			{
				name = 'Notas',
				path = '~/Vaults/Notas'
			}
		},
		completion = {
			nvim_cmp = true,
			min_chars = 2
		},
		picker = {
			name = "telescope.nvim",

			note_mappings = {
				new = '<C-x>',
				insert_link = '<C-l>'
			},
			tag_mappings = {
				tag_note = '<C-x>',
				insert_tag = '<C-l>'
			}
		},
		note_id_func = function(title)
			-- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
			-- In this case a note with the title 'My new note' will be given an ID that looks
			-- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
			local suffix = ""
			if title ~= nil then
				-- If title is given, transform it into valid file name.
				suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
			else
				-- If title is nil, just add 4 random uppercase letters to the suffix.
				for _ = 1, 4 do
					suffix = suffix .. string.char(math.random(65, 90))
				end
			end
		return tostring(os.time()) .. "-" .. suffix
		end,
	}
},

vim.keymap.set('n', '<leader>ow', ':ObsidianWorkspace<CR>', {
	desc = 'Open a workspace'
}),

vim.keymap.set('n', '<leader>ot', ':ObsidianTags<CR>', {
	desc = 'Search for or add tags'
}),
vim.keymap.set('n', '<leader>os', ':ObsidianSearch<CR>', {
	desc = 'Search the Vault for matching filenames or text'
}),

vim.keymap.set('n', '<leader>or', ':ObsidianRename<CR>', {
	desc = 'Rename the current note'
}),
vim.keymap.set('n', '<leader>on', ':ObsidianNew<CR>', {
	desc = 'Create a new note'
})
