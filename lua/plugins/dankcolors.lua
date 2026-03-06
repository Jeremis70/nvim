return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function()
			require('base16-colorscheme').setup({
				base00 = '#121415',
				base01 = '#121415',
				base02 = '#8a9196',
				base03 = '#8a9196',
				base04 = '#e3ecf2',
				base05 = '#f8fcff',
				base06 = '#f8fcff',
				base07 = '#f8fcff',
				base08 = '#ff9fbc',
				base09 = '#ff9fbc',
				base0A = '#c0e3fe',
				base0B = '#a5ffb0',
				base0C = '#def1ff',
				base0D = '#c0e3fe',
				base0E = '#cce9ff',
				base0F = '#cce9ff',
			})

			vim.api.nvim_set_hl(0, 'Visual', {
				bg = '#8a9196',
				fg = '#f8fcff',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Statusline', {
				bg = '#c0e3fe',
				fg = '#121415',
			})
			vim.api.nvim_set_hl(0, 'LineNr', { fg = '#8a9196' })
			vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#def1ff', bold = true })

			vim.api.nvim_set_hl(0, 'Statement', {
				fg = '#cce9ff',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Keyword', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Repeat', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Conditional', { link = 'Statement' })

			vim.api.nvim_set_hl(0, 'Function', {
				fg = '#c0e3fe',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Macro', {
				fg = '#c0e3fe',
				italic = true
			})
			vim.api.nvim_set_hl(0, '@function.macro', { link = 'Macro' })

			vim.api.nvim_set_hl(0, 'Type', {
				fg = '#def1ff',
				bold = true,
				italic = true
			})
			vim.api.nvim_set_hl(0, 'Structure', { link = 'Type' })

			vim.api.nvim_set_hl(0, 'String', {
				fg = '#a5ffb0',
				italic = true
			})

			vim.api.nvim_set_hl(0, 'Operator', { fg = '#e3ecf2' })
			vim.api.nvim_set_hl(0, 'Delimiter', { fg = '#e3ecf2' })
			vim.api.nvim_set_hl(0, '@punctuation.bracket', { link = 'Delimiter' })
			vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = 'Delimiter' })

			vim.api.nvim_set_hl(0, 'Comment', {
				fg = '#8a9196',
				italic = true
			})

			local current_file_path = vim.fn.stdpath("config") .. "/lua/plugins/dankcolors.lua"
			if not _G._matugen_theme_watcher then
				local uv = vim.uv or vim.loop
				_G._matugen_theme_watcher = uv.new_fs_event()
				_G._matugen_theme_watcher:start(current_file_path, {}, vim.schedule_wrap(function()
					local new_spec = dofile(current_file_path)
					if new_spec and new_spec[1] and new_spec[1].config then
						new_spec[1].config()
						print("Theme reload")
					end
				end))
			end
		end
	}
}
