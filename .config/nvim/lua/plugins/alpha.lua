return {
	"goolord/alpha-nvim",
	dependencies = { "echasnovski/mini.icons" },
	config = function()
		local lazy = require("lazy")
		local dashboard = require("alpha.themes.dashboard")
		require("alpha").setup({
			layout = {
				{ type = "padding", val = 1 },
				{
					type = "text",
					opts = {
						position = "center",
						hl = "DashboardHeader",
					},
					val = {
						[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
						[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
						[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣧⡀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
						[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣶⣤⣀⢀⣠⣴⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
						[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
						[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⢀⣀⣤⣾⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
						[[⠀⠀⢠⣤⣤⣤⣤⣤⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢛⠿⠿⡿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
						[[⠀⠀⠀⠉⠙⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⠀⢣⡰⣶⢘⠈⣿⣿⣿⣿⣶⣒⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
						[[⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣄⠈⠉⠁⢠⣿⣿⣿⣿⣿⠥⣤⣄⣸⣙⣦⡶⠆⣤⢄⣀⠀⠀⠀⠀⠀⠀⠀⠀]],
						[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣿⣿⣿⣯⠿⣿⠀⠁⠀⣼⠉⡏⡉⠉⠑⠒⠮⣭⣑⠒⠤⡀⠀⠀⠀]],
						[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⢀⣯⣆⣠⣄⡿⢦⡧⠨⠧⠄⠄⣠⣴⣈⢵⢦⣌⠷⢄⠀]],
						[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⣿⣿⠋⢩⠃⣤⡍⡊⢿⣿⣿⡿⠁⠀⠀⠧⠈⢭⣭⠇⠀⠉⠳⢤⡴⠋⠉⢰⡎⠹⢆⠈⠳⣄⠱]],
						[[⠀⠀⠀⠀⠀⠀⠀⣤⡶⠿⠟⠛⠛⠛⠻⣿⣿⣆⡀⠑⠒⣒⣵⣿⣿⡏⠀⠀⢀⣠⠔⠊⠁⡸⣄⠈⠏⢆⣎⠀⠀⠀⢸⠁⠀⡥⠄⠀⠉⢢]],
						[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⡿⣏⠿⠽⢿⣿⠗⠒⠉⠁⣀⡤⠔⠊⣿⠈⢷⡃⢸⡇⠀⠀⠀⢼⢳⢦⣇⠀⠀⠀⠀]],
						[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡤⢾⣿⣿⠋⣀⣀⣤⠤⠬⢿⡗⠂⠉⠁⠀⠀⠀⢀⣄⠀⠀⠙⡇⠇⠀⠀⢀⣯⠀⠀⡏⠳⣄⠀⠀]],
						[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠊⣿⠠⡾⠋⠀⡗⣄⠀⠀⠀⠀⠈⠁⠀⠀⣀⡠⠴⠚⢉⣠⠵⣀⡀⣷⠀⠀⠀⠀⡏⠀⢰⡇⠀⢨⢷⡄]],
						[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡞⠀⢂⢻⡲⠒⠒⠢⡧⡟⣖⠤⣠⡤⠤⠒⠉⣉⡤⠤⠚⠉⠁⠀⠀⠀⠱⢿⠒⠆⠀⠐⣷⣐⠦⡗⠂⠚⠀⠹]],
						[[⠀⠀⠀⠀⠀⠀⠀⠀⢀⠏⡇⢀⡤⣞⣒⣚⣟⣒⣫⡀⢙⣄⠀⠈⠑⢯⣍⠁⠀⠀⠀⠀⠀⠀⠀⠀⢸⢺⠀⠀⠀⢸⢇⠁⢸⣷⡄⠀⠀⠀]],
						[[⠀⠀⠀⠀⠀⠀⠀⠀⢘⠀⡼⣧⣾⣿⣿⣿⣿⣿⣿⣮⡶⡇⠀⠀⠀⠀⠀⠉⠒⢤⣄⣀⣀⠀⠀⠀⢸⣞⠠⠀⠀⢸⢇⠀⢺⡇⠘⢦⡁⠀]],
						[[⠀⠀⠀⠀⠀⠀⠀⠀⣸⢶⢶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡄⠀⠀⠀⠀⠀⠀⠀⠈⢿⣬⣳⡀⠀⠨⡇⠀⠀⠀⢸⠸⠰⢿⠇⠀⠈⢷⠀]],
						[[⠀⠀⠀⠀⠀⠀⢀⣼⢋⣦⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⡄⠀⠀⠀⠀⠀⠀⠀⠈⣷⠈⠑⣔⡇⡇⠀⠂⠠⢸⣀⣀⣼⠀⠀⠀⠀⢧]],
						[[⠀⠀⠀⠀⢀⡴⠋⠀⠀⣿⣿⣯⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣻⡄⠁⠀⠀⠀⠀⠀⠀⢹⣧⣤⣸⢱⡇⠁⠀⠀⣾⠀⠀⣧⣆⠀⠀⠀⢸]],
						[[⠀⠀⠀⣠⠞⠁⠀⠀⠀⣿⣿⣿⣽⣿⣿⣿⣿⣿⣿⡉⠻⣿⣿⡇⣷⣦⠀⠀⠀⠀⠀⠀⢸⡇⠀⡞⢳⡗⠒⠒⠀⣿⡾⣴⡿⣿⠀⠀⠀⢸]],
						[[⠀⠀⡼⠃⠀⠀⠀⠀⠘⣿⣿⣿⣷⣿⣿⣿⣾⣿⣿⡇⠈⣿⣿⠿⣉⣁⣀⠤⠤⠄⠚⠒⠺⣷⢀⠇⣸⡁⠀⠀⠀⣿⢀⢀⣿⠃⠀⠀⠀⢠]],
						[[⣠⠏⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣯⡿⣿⣿⣿⣿⠥⠴⡿⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⣿⠟⢀⡞⠀⠠⠀⢀⡟⢀⢸⡇⠀⠀⠀⣠⠟]],
						[[⠁⢀⠀⠀⠀⠀⠀⠀⢀⡶⠦⠤⠝⢛⡛⢉⡻⣾⠏⠵⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⠩⣠⠟⢅⠀⠀⠀⡼⠁⠸⣾⠧⢄⣠⡾⠋⠀]],
					},
				},
				{ type = "padding", val = 2 },
				{
					type = "text",
					val = " crookedTooth",
					opts = {
						position = "center",
					},
				},
				{
					type = "group",
					val = {
						dashboard.button("r", "  recently used files", ":Telescope oldfiles <CR>"),
						dashboard.button("f", "  find file", ":Telescope find_files <CR>"),
						dashboard.button("n", "  new file", ":ene <BAR> startinsert <CR>"),
						dashboard.button(
							"c",
							"  Configuration",
							":e ~/.config/nvim/init.lua<CR>"
						),
					},
				},
				{
					type = "text",
					val = string.format("loaded %i plugins !", lazy.stats().count),
					opts = {
						position = "center",
						hl = "DashboardFooter",
					},
				},
			},
		})
	end,
}
