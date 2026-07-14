local M = {}

function M.get(c, config)
	local italic = config.italics

	return {
		["@comment"] = { fg = c.comment, italic = italic.comments },
		["@comment.documentation"] = { fg = c.comment_doc, italic = italic.comments, bold = true },
		["@comment.error"] = { fg = c.error },
		["@comment.warning"] = { fg = c.warning },
		["@comment.todo"] = { fg = c.warning, bold = true },
		["@comment.note"] = { fg = c.hint, bold = true },

		["@constant"] = { fg = c.purple },
		["@constant.builtin"] = { fg = c.purple },
		["@constant.macro"] = { fg = c.fg },

		["@string"] = { fg = c.green, italic = italic.strings },
		["@string.documentation"] = { fg = c.green, italic = italic.strings },
		["@string.escape"] = { fg = c.comment_doc },
		["@string.regex"] = { fg = c.muted_purple },
		["@string.special"] = { fg = c.muted_purple },
		["@string.special.symbol"] = { fg = c.muted_purple },
		["@string.special.url"] = { fg = c.aqua, underline = true },
		["@character"] = { fg = c.green },
		["@character.special"] = { fg = c.comment_doc },

		["@number"] = { fg = c.muted_purple },
		["@number.float"] = { fg = c.muted_purple },
		["@boolean"] = { fg = c.muted_purple },

		["@function"] = { fg = c.aqua, italic = italic.functions },
		["@function.builtin"] = { fg = c.aqua, italic = italic.functions },
		["@function.call"] = { fg = c.aqua, italic = italic.functions },
		["@function.macro"] = { fg = c.purple },
		["@function.method"] = { fg = c.aqua, italic = italic.functions },
		["@function.method.call"] = { fg = c.aqua, italic = italic.functions },

		["@parameter"] = { fg = c.fg_muted },
		["@parameter.reference"] = { fg = c.fg },

		["@method"] = { fg = c.aqua, italic = italic.functions },
		["@field"] = { fg = c.red },
		["@property"] = { fg = c.red },

		["@constructor"] = { fg = c.aqua },

		["@conditional"] = { fg = c.blue, italic = italic.keywords },
		["@repeat"] = { fg = c.blue, italic = italic.keywords },
		["@label"] = { fg = c.blue },
		["@operator"] = { fg = c.aqua, italic = italic.operators },
		["@keyword"] = { fg = c.blue, italic = italic.keywords },
		["@keyword.conditional"] = { fg = c.blue, italic = italic.keywords },
		["@keyword.coroutine"] = { fg = c.blue, italic = italic.keywords },
		["@keyword.debug"] = { fg = c.warning },
		["@keyword.directive"] = { fg = c.blue },
		["@keyword.directive.define"] = { fg = c.blue },
		["@keyword.exception"] = { fg = c.blue, italic = italic.keywords },
		["@keyword.function"] = { fg = c.blue, italic = italic.keywords },
		["@keyword.import"] = { fg = c.blue },
		["@keyword.repeat"] = { fg = c.blue, italic = italic.keywords },
		["@keyword.return"] = { fg = c.blue, italic = italic.keywords },
		["@keyword.storage"] = { fg = c.blue, italic = italic.keywords },
		["@keyword.type"] = { fg = c.aqua },

		["@exception"] = { fg = c.blue, italic = italic.keywords },
		["@throw"] = { fg = c.error },

		["@type"] = { fg = c.aqua },
		["@type.builtin"] = { fg = c.aqua },
		["@type.definition"] = { fg = c.aqua },
		["@type.qualifier"] = { fg = c.blue, italic = italic.keywords },

		["@attribute"] = { fg = c.blue },
		["@attribute.builtin"] = { fg = c.blue },

		["@punctuation.delimiter"] = { fg = c.fg_muted },
		["@punctuation.bracket"] = { fg = c.fg_muted },
		["@punctuation.special"] = { fg = c.fg_muted },
		["@punctuation.special.markdown"] = { fg = c.red },

		["@tag"] = { fg = c.blue },
		["@tag.attribute"] = { fg = c.blue },
		["@tag.delimiter"] = { fg = c.fg_muted },

		["@variable"] = { fg = c.fg },
		["@variable.builtin"] = { fg = c.purple },
		["@variable.member"] = { fg = c.red },
		["@variable.parameter"] = { fg = c.fg_muted },

		["@variable.parameter.reference"] = { fg = c.fg_muted },

		["@module"] = { fg = c.fg },
		["@module.builtin"] = { fg = c.aqua },
		["@symbol"] = { fg = c.muted_purple },

		["@namespace"] = { fg = c.fg },
		["@include"] = { fg = c.blue },

		["@definition"] = { underline = true, sp = c.border },

		["@text"] = { fg = c.fg },
		["@text.strong"] = { bold = true },
		["@text.emphasis"] = { italic = italic.emphasis },
		["@text.underline"] = { underline = true },
		["@text.strike"] = { strikethrough = true },
		["@text.title"] = { fg = c.red, bold = true },
		["@text.literal"] = { fg = c.green },
		["@text.uri"] = { fg = c.aqua, underline = true },
		["@text.math"] = { fg = c.muted_purple },
		["@text.environment"] = { fg = c.blue },
		["@text.environment.name"] = { fg = c.aqua },
		["@text.reference"] = { fg = c.yellow },
		["@text.todo"] = { fg = c.warning, bold = true },
		["@text.note"] = { fg = c.hint, bold = true },
		["@text.warning"] = { fg = c.warning },
		["@text.danger"] = { fg = c.error },
		["@text.diff.add"] = { fg = c.created },
		["@text.diff.delete"] = { fg = c.deleted },
		["@text.diff.plus"] = { fg = c.created },
		["@text.diff.minus"] = { fg = c.deleted },

		["@markup.heading"] = { fg = c.red, bold = true },
		["@markup.heading.1"] = { fg = c.red, bold = true },
		["@markup.heading.2"] = { fg = c.orange, bold = true },
		["@markup.heading.3"] = { fg = c.yellow, bold = true },
		["@markup.heading.4"] = { fg = c.green, bold = true },
		["@markup.heading.5"] = { fg = c.blue, bold = true },
		["@markup.heading.6"] = { fg = c.purple, bold = true },
		["@markup.italic"] = { italic = italic.emphasis },
		["@markup.bold"] = { bold = true },
		["@markup.underline"] = { underline = true },
		["@markup.strikethrough"] = { strikethrough = true },
		["@markup.link"] = { fg = c.aqua, underline = true },
		["@markup.link.url"] = { fg = c.aqua, underline = true },
		["@markup.link.label"] = { fg = c.aqua },
		["@markup.list"] = { fg = c.red },
		["@markup.list.checked"] = { fg = c.green },
		["@markup.list.unchecked"] = { fg = c.fg_muted },
		["@markup.raw"] = { fg = c.green },
		["@markup.code"] = { fg = c.green },
		["@markup.inline"] = { fg = c.green },

		["@diff.plus"] = { fg = c.created, bg = c.created_bg },
		["@diff.minus"] = { fg = c.deleted, bg = c.deleted_bg },
		["@diff.delta"] = { fg = c.modified, bg = c.modified_bg },

		["@error"] = { fg = c.error },
		["@warning"] = { fg = c.warning },
		["@hint"] = { fg = c.hint },
		["@info"] = { fg = c.info },

		["@annotation"] = { fg = c.purple, italic = true },
		["@annotation.builtin"] = { fg = c.purple, italic = true },
	}
end

return M
