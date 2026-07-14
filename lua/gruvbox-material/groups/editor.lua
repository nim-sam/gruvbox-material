local M = {}

function M.get(c, config)
	local bg = config.transparent and c.none or c.bg
	local bg_float = config.transparent and c.none or c.bg_float
	local bg_sidebar = config.transparent and c.none or c.bg_sidebar
	local bg_popup = config.transparent and c.none or c.bg_popup
	local bg_status = config.transparent and c.none or c.bg_status

	return {
		Normal = { fg = c.fg, bg = bg },
		NormalFloat = { fg = c.fg, bg = bg_float },
		NormalSB = { fg = c.fg, bg = bg_sidebar },

		EndOfBuffer = { fg = c.bg },
		NonText = { fg = c.fg_placeholder },
		Whitespace = { fg = c.fg_placeholder },
		SpecialKey = { fg = c.fg_placeholder },

		LineNr = { fg = c.fg_line_number, bg = bg },
		CursorLineNr = { fg = c.fg_active_line, bg = bg },
		CursorLine = { bg = c.bg_line },
		CursorColumn = { bg = c.bg_line },

		ColorColumn = { bg = c.bg_hover },
		SignColumn = { bg = bg },
		FoldColumn = { fg = c.fg_placeholder, bg = bg },
		Folded = { fg = c.comment, bg = c.bg_surface },

		VertSplit = { fg = c.border, bg = bg },
		WinSeparator = { fg = c.border, bg = bg },
		WinBar = { bg = bg },
		WinBarNC = { bg = bg },

		StatusLine = { fg = c.fg, bg = c.bg_surface },
		StatusLineNC = { fg = c.comment, bg = bg_status },
		TabLine = { fg = c.comment, bg = c.bg_tab_inactive },
		TabLineFill = { bg = c.bg_tab_bar },
		TabLineSel = { fg = c.fg, bg = c.bg_tab_active },

		Title = { fg = c.aqua, bold = true },
		WildMenu = { fg = c.bg, bg = c.fg_accent },
		ModeMsg = { fg = c.fg },
		MsgArea = { fg = c.fg },
		MsgSeparator = { fg = c.border, bg = bg },

		Pmenu = { fg = c.fg, bg = c.bg_menu },
		PmenuSel = { fg = c.bg, bg = c.fg_accent },
		PmenuSbar = { bg = c.bg_scrollbar },
		PmenuThumb = { bg = c.bg_scrollbar_hover },

		Search = { fg = c.fg, bg = c.bg_search },
		IncSearch = { fg = c.fg, bg = c.bg_search_active },
		CurSearch = { fg = c.fg, bg = c.bg_search_active },

		Visual = { bg = c.bg_visual },
		VisualNOS = { bg = c.bg_visual_inactive },

		MatchParen = { fg = c.fg, bg = c.bg_hover, bold = true },
		MatchWord = { underline = true },

		Question = { fg = c.fg_accent },
		MoreMsg = { fg = c.fg_accent },
		WarningMsg = { fg = c.warning },
		ErrorMsg = { fg = c.error },

		Directory = { fg = c.blue },

		DiffAdd = { fg = c.created, bg = c.created_bg },
		DiffChange = { fg = c.modified, bg = c.modified_bg },
		DiffDelete = { fg = c.deleted, bg = c.deleted_bg },
		DiffText = { fg = c.created, bg = c.created_bg },

		SpellBad = { undercurl = true, sp = c.error },
		SpellCap = { undercurl = true, sp = c.warning },
		SpellLocal = { undercurl = true, sp = c.hint },
		SpellRare = { undercurl = true, sp = c.purple },

		Cursor = { fg = c.cursor, bg = c.cursor },
		lCursor = { fg = c.cursor_im, bg = c.cursor_im },
		TermCursor = { fg = c.bg, bg = c.fg },
		TermCursorNC = { fg = c.bg, bg = c.comment },

		ToolbarLine = { bg = bg },
		ToolbarButton = { fg = c.fg, bg = c.bg_surface, bold = true },

		Conceal = { fg = c.comment },
		QuickFixLine = { bg = c.bg_visual },

		FloatBorder = { fg = c.border, bg = bg_float },
		FloatTitle = { fg = c.fg_accent, bg = bg_float },
	}
end

return M
