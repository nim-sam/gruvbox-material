local config = require("gruvbox-material.config")
local palette = require("gruvbox-material.palette")
local terminal = require("gruvbox-material.terminal")

local M = {}

function M.load(opts)
	config.setup(opts)
	local c = vim.o.background == "light" and palette.light or palette.dark

	M.apply_highlights(c)
	M.setup_terminal(c)
	M.apply_overrides(c)
end

local saved_groups = {}

function M.apply_highlights(c)
	local groups = {}

	local function merge(tbl)
		for k, v in pairs(tbl) do
			groups[k] = v
		end
	end

	merge(require("gruvbox-material.groups.editor").get(c, config))
	merge(require("gruvbox-material.groups.syntax").get(c, config))
	merge(require("gruvbox-material.groups.treesitter").get(c, config))
	merge(require("gruvbox-material.groups.lsp").get(c, config))
	merge(require("gruvbox-material.groups.plugins").get(c, config))

	saved_groups = groups

	for group, spec in pairs(groups) do
		vim.api.nvim_set_hl(0, group, spec)
	end
end

-- Setup ColorScheme autocmd to re-apply theme groups after every color reload
local augroup = vim.api.nvim_create_augroup("gruvbox_material", { clear = true })
vim.api.nvim_create_autocmd("ColorScheme", {
	group = augroup,
	callback = function()
		for group, spec in pairs(saved_groups) do
			vim.api.nvim_set_hl(0, group, spec)
		end
		-- Also re-apply user overrides
		M.apply_overrides()
	end,
})

function M.setup_terminal(c)
	if config.terminal_colors then
		terminal.setup(c)
	end
end

function M.apply_overrides(c)
	if config.overrides then
		for group, spec in pairs(config.overrides) do
			vim.api.nvim_set_hl(0, group, spec)
		end
	end
end

M.setup = config.setup

return M
