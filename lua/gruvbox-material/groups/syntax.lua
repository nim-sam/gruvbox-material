local M = {}

function M.get(c, config)
	local italic = config.italics

	return {
		Comment = { fg = c.comment, italic = italic.comments },
		SpecialComment = { fg = c.comment_doc, italic = italic.comments, bold = true },
		Todo = { fg = c.warning, bold = true },

		Constant = { fg = c.purple },
		String = { fg = c.green, italic = italic.strings },
		Character = { fg = c.green },
		Number = { fg = c.muted_purple },
		Boolean = { fg = c.muted_purple },
		Float = { fg = c.muted_purple },

		Identifier = { fg = c.fg },
		Function = { fg = c.aqua, italic = italic.functions },

		Statement = { fg = c.blue, italic = italic.keywords },
		Conditional = { fg = c.blue, italic = italic.keywords },
		Repeat = { fg = c.blue, italic = italic.keywords },
		Label = { fg = c.blue },
		Operator = { fg = c.aqua, italic = italic.operators },
		Keyword = { fg = c.blue, italic = italic.keywords },
		Exception = { fg = c.blue, italic = italic.keywords },

		PreProc = { fg = c.fg },
		Include = { fg = c.blue },
		Define = { fg = c.blue },
		Macro = { fg = c.fg },
		PreCondit = { fg = c.blue },

		Type = { fg = c.aqua },
		StorageClass = { fg = c.blue, italic = italic.keywords },
		Structure = { fg = c.aqua },
		Typedef = { fg = c.aqua },

		Special = { fg = c.purple },
		SpecialChar = { fg = c.comment_doc },
		Tag = { fg = c.blue },
		Delimiter = { fg = c.fg },
		Debug = { fg = c.warning },

		Underlined = { underline = true, sp = c.fg },
		Ignore = { fg = c.comment },
		Error = { fg = c.error },
		Risk = { fg = c.warning },
	}
end

return M
