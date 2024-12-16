return {
	{
		"nvim-telescope/telescope.nvim",
		-- replace all Telescope keymaps with only one mapping
		keys = function()
			return {
				-- File pickers
				{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
				{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live Grep" },
				{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find Buffers" },
				{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find Help Tags" },
				{ "<leader>fo", "<cmd>Telescope oldfiles<cr>", desc = "Recent Files" },
				{ "<leader>fr", "<cmd>Telescope resume<cr>", desc = "Resume Last Search" },

				-- Git integration
				{ "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "Git Commits" },
				{ "<leader>gb", "<cmd>Telescope git_branches<cr>", desc = "Git Branches" },
				{ "<leader>gs", "<cmd>Telescope git_status<cr>", desc = "Git Status" },
				{ "<leader>gS", "<cmd>Telescope git_stash<cr>", desc = "Git Stash" },
			}
		end,
	}
 }
