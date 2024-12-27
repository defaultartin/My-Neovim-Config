function NoBackground()
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

--[[return {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd('colorscheme gruvbox')
		NoBackground()
		require("gruvbox").setup({
			terminal_colors = true, -- add neovim terminal colors
			undercurl = true,
			underline = false,
			bold = true,
			italic = {
				strings = false,
				emphasis = false,
				comments = false,
				operators = false,
				folds = false,
			},
			strikethrough = true,
			invert_selection = false,
			invert_signs = false,
			invert_tabline = false,
			invert_intend_guides = false,
			inverse = true, -- invert background for search, diffs, statuslines and errors
			contrast = "", -- can be "hard", "soft" or empty string
			palette_overrides = {},
			overrides = {},
			dim_inactive = false,
			transparent_mode = false,
        })
    end,
}--]]

--[[return {
  'projekt0n/github-nvim-theme',
  lazy = false,
  priority = 1000,
  config = function()
    require('github-theme').setup({
      -- ...
    })

    vim.cmd('colorscheme github_dark_default')
	NoBackground()
  end,
}--]]

--[[return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        vim.cmd('colorscheme catppuccin')
		NoBackground()
    end
}--]]

--[[return {
    "RRethy/base16-nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd('colorscheme base16-ayu-dark')
		NoBackground()
    end,
}--]]

--[[return {
	"rose-pine/neovim",
	name = "rose-pine",
	priority = 1000,
	config = function()
		vim.cmd('colorscheme rose-pine')
		NoBackground()
	end
}--]]

--[[return {
	"Mofiqul/vscode.nvim",
	priority = 1000,
	config = function()
		vim.cmd('colorscheme vscode')
		NoBackground()
	end
}--]]

--[[return {
    "blazkowolf/gruber-darker.nvim",
    name = "gruber-darker",
    priority = 1000,
    config = function()
        vim.cmd('colorscheme gruber-darker')
		NoBackground()
    end
}-]]

--[[return {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    priority = 1000,
    config = function()
        vim.cmd('colorscheme kanagawa')
		NoBackground()
    end
}--]]

return {
    "Shatur/neovim-ayu",
    name = "ayu",
    priority = 1000,
    config = function()
        vim.cmd('colorscheme ayu')
		NoBackground()
    end
}
