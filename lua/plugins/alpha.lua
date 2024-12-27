return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                     ]],
      [[       ████ ██████           █████      ██                     ]],
	  [[      ███████████             █████                             ]],
      [[      █████████ ███████████████████ ███   ███████████   ]],
      [[     █████████  ███    █████████████ █████ ██████████████   ]],
	  [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
      [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
      [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
      [[                                                                       ]],
      [[                                                                       ]],
      [[                                                                       ]],
    }
	dashboard.section.buttons.val = {
		dashboard.button("e", "  New file", "<Cmd> ene <CR>"),
		dashboard.button("r", "  Recent"   , ":Telescope oldfiles<CR>"),
		dashboard.button("f", "󰈞  Find file", ":Telescope find_files <CR>"),
		dashboard.button("t", "󱎸  Find text", ":Telescope live_grep <CR>"),
		dashboard.button("m", "  BookMarks", ":Telescope marks <CR>"),
		dashboard.button("s", "  Default Theme", ":e ~/.config/nvim/lua/plugins/theme.lua<CR>"),
		dashboard.button("c", "  Configuration", ":Explore ~/.config/nvim/<CR>"),
		dashboard.button("q", "󰿅  Quit NVIM", ":qa<CR>"),
	}

    alpha.setup(dashboard.opts)
  end,
}
