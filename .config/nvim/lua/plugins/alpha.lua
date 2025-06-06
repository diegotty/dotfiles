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
          val ={

            [[                        ar                         ]],
            [[                 ,e*m_  tF  g@^Np                  ]],
            [[            !h_  0L_JF  0#  #p_gF  _#^             ]],
            [[             `#g_      jF9L      _g@  ___          ]],
            [[        g@!#   #NNw__adF  "#g__g#"N  aP""#         ]],
            [[        #mw#   0L    #L    ,#     #  `#mw@         ]],
            [[    mg___    _a#_    ]#    #F     BL_   ___gM*     ]],
            [[      "9N#*^^"""Np_   9L  JF   _g@""""^"##""       ]],
            [[    _ag_  N%     "*#__d"^^"#mg#""     j@" ,pmq_    ]],
            [[   dF  B   TL____  _#        0L_______#   0_ j#    ]],
            [[    9**"  a@""""^9##"         B@""""" 9M_  """     ]],
            [[    ___gg@"       _2F        _Bp_       "#Mgg__    ]],
            [[   ^""""""@*___g#@F""#___ __jF""9##g__*@""    "    ]],
            [[     __a_   3#"     g@F"#MF"Nh_     3@   apmg      ]],
            [[     0C jF  jF    _g@   j#   "#L     #   #__2F     ]],
            [[      """  g#_ammg#"    ]#     0Ne*wgj#_ """"      ]],
            [[         j#@"     5h   _j#__  j@     ""NM_         ]],
            [[        *"  ,p**g  0Lg@"  "9M_0   #F9M   "^        ]],
            [[            9L__#  JN" __a_  N#  `h__#             ]],
            [[             """   #F  #" j#  9L                   ]],
            [[                  J#   `**@"   @                   ]],
            [[                                   D.H., 1991      ]],
          },
					--val = {
					--	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ]],
					--	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
					--	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣧⡀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
					--	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣶⣤⣀⢀⣠⣴⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
					--	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
					--	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⢀⣀⣤⣾⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
					--	[[⠀⠀⢠⣤⣤⣤⣤⣤⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢛⠿⠿⡿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
					--	[[⠀⠀⠀⠉⠙⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⠀⢣⡰⣶⢘⠈⣿⣿⣿⣿⣶⣒⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
					--	[[⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣄⠈⠉⠁⢠⣿⣿⣿⣿⣿⠥⣤⣄⣸⣙⣦⡶⠆⣤⢄⣀⠀⠀⠀⠀⠀⠀⠀⠀]],
					--	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣿⣿⣿⣯⠿⣿⠀⠁⠀⣼⠉⡏⡉⠉⠑⠒⠮⣭⣑⠒⠤⡀⠀⠀⠀]],
					--	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⢀⣯⣆⣠⣄⡿⢦⡧⠨⠧⠄⠄⣠⣴⣈⢵⢦⣌⠷⢄⠀]],
					--	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⣿⣿⠋⢩⠃⣤⡍⡊⢿⣿⣿⡿⠁⠀⠀⠧⠈⢭⣭⠇⠀⠉⠳⢤⡴⠋⠉⢰⡎⠹⢆⠈⠳⣄⠱]],
					--	[[⠀⠀⠀⠀⠀⠀⠀⣤⡶⠿⠟⠛⠛⠛⠻⣿⣿⣆⡀⠑⠒⣒⣵⣿⣿⡏⠀⠀⢀⣠⠔⠊⠁⡸⣄⠈⠏⢆⣎⠀⠀⠀⢸⠁⠀⡥⠄⠀⠉⢢]],
					--	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⡿⣏⠿⠽⢿⣿⠗⠒⠉⠁⣀⡤⠔⠊⣿⠈⢷⡃⢸⡇⠀⠀⠀⢼⢳⢦⣇⠀⠀⠀⠀]],
					--	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡤⢾⣿⣿⠋⣀⣀⣤⠤⠬⢿⡗⠂⠉⠁⠀⠀⠀⢀⣄⠀⠀⠙⡇⠇⠀⠀⢀⣯⠀⠀⡏⠳⣄⠀⠀]],
					--	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠊⣿⠠⡾⠋⠀⡗⣄⠀⠀⠀⠀⠈⠁⠀⠀⣀⡠⠴⠚⢉⣠⠵⣀⡀⣷⠀⠀⠀⠀⡏⠀⢰⡇⠀⢨⢷⡄]],
					--	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡞⠀⢂⢻⡲⠒⠒⠢⡧⡟⣖⠤⣠⡤⠤⠒⠉⣉⡤⠤⠚⠉⠁⠀⠀⠀⠱⢿⠒⠆⠀⠐⣷⣐⠦⡗⠂⠚⠀⠹]],
					--	[[⠀⠀⠀⠀⠀⠀⠀⠀⢀⠏⡇⢀⡤⣞⣒⣚⣟⣒⣫⡀⢙⣄⠀⠈⠑⢯⣍⠁⠀⠀⠀⠀⠀⠀⠀⠀⢸⢺⠀⠀⠀⢸⢇⠁⢸⣷⡄⠀⠀⠀]],
					--	[[⠀⠀⠀⠀⠀⠀⠀⠀⢘⠀⡼⣧⣾⣿⣿⣿⣿⣿⣿⣮⡶⡇⠀⠀⠀⠀⠀⠉⠒⢤⣄⣀⣀⠀⠀⠀⢸⣞⠠⠀⠀⢸⢇⠀⢺⡇⠘⢦⡁⠀]],
					--	[[⠀⠀⠀⠀⠀⠀⠀⠀⣸⢶⢶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡄⠀⠀⠀⠀⠀⠀⠀⠈⢿⣬⣳⡀⠀⠨⡇⠀⠀⠀⢸⠸⠰⢿⠇⠀⠈⢷⠀]],
					--	[[⠀⠀⠀⠀⠀⠀⢀⣼⢋⣦⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⡄⠀⠀⠀⠀⠀⠀⠀⠈⣷⠈⠑⣔⡇⡇⠀⠂⠠⢸⣀⣀⣼⠀⠀⠀⠀⢧]],
					--	[[⠀⠀⠀⠀⢀⡴⠋⠀⠀⣿⣿⣯⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣻⡄⠁⠀⠀⠀⠀⠀⠀⢹⣧⣤⣸⢱⡇⠁⠀⠀⣾⠀⠀⣧⣆⠀⠀⠀⢸]],
					--	[[⠀⠀⠀⣠⠞⠁⠀⠀⠀⣿⣿⣿⣽⣿⣿⣿⣿⣿⣿⡉⠻⣿⣿⡇⣷⣦⠀⠀⠀⠀⠀⠀⢸⡇⠀⡞⢳⡗⠒⠒⠀⣿⡾⣴⡿⣿⠀⠀⠀⢸]],
					--	[[⠀⠀⡼⠃⠀⠀⠀⠀⠘⣿⣿⣿⣷⣿⣿⣿⣾⣿⣿⡇⠈⣿⣿⠿⣉⣁⣀⠤⠤⠄⠚⠒⠺⣷⢀⠇⣸⡁⠀⠀⠀⣿⢀⢀⣿⠃⠀⠀⠀⢠]],
					--	[[⣠⠏⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣯⡿⣿⣿⣿⣿⠥⠴⡿⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⣿⠟⢀⡞⠀⠠⠀⢀⡟⢀⢸⡇⠀⠀⠀⣠⠟]],
					--	[[⠁⢀⠀⠀⠀⠀⠀⠀⢀⡶⠦⠤⠝⢛⡛⢉⡻⣾⠏⠵⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⠩⣠⠟⢅⠀⠀⠀⡼⠁⠸⣾⠧⢄⣠⡾⠋⠀]],
					--},
				},
				{ type = "padding", val = 2 },
				{
					type = "text",
					val = "whatevever your shit is, man, do it",
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
