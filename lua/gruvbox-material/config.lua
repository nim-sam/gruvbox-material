local M = {
	transparent = false,
	terminal_colors = true,
	overrides = {},
	italics = {
		comments = true,
		keywords = true,
		functions = false,
		strings = false,
		emphasis = true,
		operators = false,
	},
	plugins = {
		all = false,
		telescope = false,
		which_key = false,
		cmp = false,
		nvim_tree = false,
		bufferline = false,
		indent_blankline = false,
		noice = false,
		trouble = false,
		gitsigns = false,
		hop = false,
		illuminate = false,
		mini = false,
		rainbow_delimiters = false,
		snacks = false,
		neotree = false,
	},
}

function M.setup(opts)
	opts = opts or {}
	local merged = vim.tbl_deep_extend("keep", opts, vim.deepcopy(M))
	for k, v in pairs(merged) do
		M[k] = v
	end
end

return M
