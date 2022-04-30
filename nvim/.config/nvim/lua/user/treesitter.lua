local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	-- one of "all", "maintained" (parsers with maintainers), or a list of languages
	ensure_installed = "all",

	-- install languages synchronously (only applied to `ensure_installed`)
	sync_install = false,
	ignore_install = { "" },
	-- List of parsers to ignore installing
	autopairs = {
		enable = true,
	},
	highlight = {
		-- false will disable the whole extension
		enable = true,
		-- list of language that will be disabled
		disable = { "" },
		additional_vim_regex_highlighting = true,
	},
	indent = { enable = true, disable = { "yaml" } },
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},
})
