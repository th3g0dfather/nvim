require('neorg').setup {
	load = {
		["core.defaults"] = {},
		["core.norg.dirman"] = {
			config = {
				workspaces = {
					home = "~/notes/home",
					work = "~/notes/work",
				}
			}
		},
		["core.norg.completion"] = {
			config = {
				engine = "nvim-cmp",
			}
		},
		["core.norg.concealer"] = {
			config = {
				icon_preset = "varied"
			}
		},
		["core.gtd.base"] = {
			config = {
				workspace = "home"
			}
		},
		["core.norg.qol.toc"] = {}
	}
}
