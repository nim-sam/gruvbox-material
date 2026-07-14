local M = {}

function M.get(c, config)
	return {
		DiagnosticError = { fg = c.error },
		DiagnosticWarn = { fg = c.warning },
		DiagnosticInfo = { fg = c.info },
		DiagnosticHint = { fg = c.hint },
		DiagnosticOk = { fg = c.success },

		DiagnosticVirtualTextError = { fg = c.error },
		DiagnosticVirtualTextWarn = { fg = c.warning },
		DiagnosticVirtualTextInfo = { fg = c.info },
		DiagnosticVirtualTextHint = { fg = c.hint },
		DiagnosticVirtualTextOk = { fg = c.success },

		DiagnosticUnderlineError = { undercurl = true, sp = c.error },
		DiagnosticUnderlineWarn = { undercurl = true, sp = c.warning },
		DiagnosticUnderlineInfo = { undercurl = true, sp = c.info },
		DiagnosticUnderlineHint = { undercurl = true, sp = c.hint },
		DiagnosticUnderlineOk = { undercurl = true, sp = c.success },

		DiagnosticFloatingError = { fg = c.error },
		DiagnosticFloatingWarn = { fg = c.warning },
		DiagnosticFloatingInfo = { fg = c.info },
		DiagnosticFloatingHint = { fg = c.hint },

		DiagnosticSignError = { fg = c.error },
		DiagnosticSignWarn = { fg = c.warning },
		DiagnosticSignInfo = { fg = c.info },
		DiagnosticSignHint = { fg = c.hint },
		DiagnosticSignOk = { fg = c.success },

		LspReferenceText = { bg = c.bg_hover },
		LspReferenceRead = { bg = c.bg_hover },
		LspReferenceWrite = { bg = c.bg_hover },

		LspCodeLens = { fg = c.comment },
		LspCodeLensSeparator = { fg = c.comment },

		LspSignatureActiveParameter = { fg = c.yellow, bold = true },

		LspInlayHint = { fg = c.comment, bg = c.bg_surface },

		JavaAnnotation = { fg = c.purple },
	}
end

return M
