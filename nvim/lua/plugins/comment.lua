return {
	{
		"numToStr/Comment.nvim",
		dependencies = {
			"JoosepAlviste/nvim-ts-context-commentstring",
		},
		config = function()
			-- Setup ts-context-commentstring (for JSX, Vue, HTML, etc.)
			require("ts_context_commentstring").setup({
				enable_autocmd = false,
			})

			-- Setup Comment.nvim with treesitter integration
			require("Comment").setup({
				pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
			})

			local api = require("Comment.api")

			-- Toggle comment - normal mode
			-- <C-/> works in some terminals, <C-_> in others
			vim.keymap.set("n", "<D-/>", api.toggle.linewise.current, { desc = "Toggle comment" })
			vim.keymap.set("n", "<C-/>", api.toggle.linewise.current, { desc = "Toggle comment" })
			vim.keymap.set("n", "<C-_>", api.toggle.linewise.current, { desc = "Toggle comment" })

			-- Toggle comment - visual mode
			local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)
			vim.keymap.set("v", "<D-/>", function()
				vim.api.nvim_feedkeys(esc, "nx", false)
				api.toggle.linewise(vim.fn.visualmode())
			end, { desc = "Toggle comment" })

			vim.keymap.set("v", "<C-/>", function()
				vim.api.nvim_feedkeys(esc, "nx", false)
				api.toggle.linewise(vim.fn.visualmode())
			end, { desc = "Toggle comment" })

			vim.keymap.set("v", "<C-_>", function()
				vim.api.nvim_feedkeys(esc, "nx", false)
				api.toggle.linewise(vim.fn.visualmode())
			end, { desc = "Toggle comment" })
		end,
	},
}
