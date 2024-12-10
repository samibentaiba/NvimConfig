local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		-- Add LazyVim and import its plugins
		{
			"LazyVim/LazyVim",
			import = "lazyvim.plugins",
			opts = {
				colorscheme = "solarized-osaka",
				news = {
					lazyvim = true,
					neovim = true,
				},
			},
		},
		-- Import any extra modules here
		{ import = "lazyvim.plugins.extras.linting.eslint" },
		{ import = "lazyvim.plugins.extras.formatting.prettier" },
		{ import = "lazyvim.plugins.extras.lang.typescript" },
		{ import = "lazyvim.plugins.extras.lang.json" },
		{ import = "lazyvim.plugins.extras.lang.rust" },
		{ import = "lazyvim.plugins.extras.lang.tailwind" },
		{ import = "lazyvim.plugins.extras.coding.copilot" },
		{ import = "lazyvim.plugins.extras.util.mini-hipatterns" },
		{ import = "plugins" },

		-- Add presence.nvim plugin configuration here
		{
			"andweeb/presence.nvim",
			config = function()
				require("presence"):setup({
					auto_update = true,
					neovim_image_text = "The One True Text Editor",
					main_image = "file",
					client_id = "793271441293967371",
					log_level = nil,
					debounce_timeout = 10,
					enable_line_number = false,
					buttons = true,
					file_assets = {},
					show_time = true,
					editing_text = "Editing %s",
					file_explorer_text = "Browsing %s",
					git_commit_text = "Committing changes",
					plugin_manager_text = "Managing plugins",
					reading_text = "Reading %s",
					workspace_text = "Working on %s",
					line_number_text = "Line %s out of %s",
				})
			end,
		},
	},
	defaults = {
		lazy = false,
		version = false,
	},
	dev = {
		path = "~/.ghq/github.com",
	},
	checker = { enabled = true },
	performance = {
		cache = { enabled = true },
		rtp = {
			disabled_plugins = {
				"gzip",
				"netrwPlugin",
				"rplugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
	ui = {
		custom_keys = {
			["<localleader>d"] = function(plugin)
				dd(plugin)
			end,
		},
	},
	debug = false,
})

