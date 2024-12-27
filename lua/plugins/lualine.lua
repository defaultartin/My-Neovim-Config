return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require('lualine').setup({
            options = {
                --theme = 'gruvbox_dark',
                --theme = 'palenight',
                --theme = 'ayu_dark',
				--theme = 'base16',
				--theme = 'moonfly',
				theme = 'auto',
				section_separators = {}, --left = '', right = '' },
				component_separators = { left = '|', right = '|'},
            },
			sections = {
				lualine_a = {
					{
						'mode', fmt = function(str) return "--" ..str.. "--" end
					}
				},
				lualine_b = {'branch', 'diff', 'diagnostics'},
				lualine_c = {'filename'},
				lualine_x = {'encoding', 'fileformat', 'filetype'},
				lualine_y = {'progress'},
				lualine_z = {'location'}
			},
        })
    end
}
