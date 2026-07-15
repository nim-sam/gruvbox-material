local M = {}

function M.get(c, config)
	local groups = {}

	if not config.plugins.all and not next(config.plugins) then
		return groups
	end

	local enabled = function(name)
		return config.plugins.all or config.plugins[name]
	end

	if enabled("telescope") then
		groups.TelescopeNormal = { fg = c.fg, bg = c.bg_float }
		groups.TelescopeBorder = { fg = c.border, bg = c.bg_float }
		groups.TelescopePromptNormal = { fg = c.fg, bg = c.bg_surface }
		groups.TelescopePromptBorder = { fg = c.border, bg = c.bg_surface }
		groups.TelescopePromptTitle = { fg = c.fg_accent, bg = c.bg_surface }
		groups.TelescopePreviewTitle = { fg = c.warning, bg = c.bg_float }
		groups.TelescopeResultsTitle = { fg = c.bg_float, bg = c.bg_float }
		groups.TelescopeSelection = { bg = c.bg_visual }
		groups.TelescopeSelectionCaret = { fg = c.fg_accent }
		groups.TelescopeMultiIcon = { fg = c.fg_accent }
		groups.TelescopeMultiSelection = { fg = c.fg_accent }
		groups.TelescopeMatching = { fg = c.fg_accent, bold = true }
		groups.TelescopeResultsDiffAdd = { fg = c.created }
		groups.TelescopeResultsDiffChange = { fg = c.modified }
		groups.TelescopeResultsDiffDelete = { fg = c.deleted }
	end

	if enabled("which_key") then
		groups.WhichKey = { fg = c.fg_accent, bold = true }
		groups.WhichKeyGroup = { fg = c.blue }
		groups.WhichKeySeparator = { fg = c.comment }
		groups.WhichKeyDesc = { fg = c.fg }
		groups.WhichKeyFloat = { bg = c.bg_float }
		groups.WhichKeyBorder = { fg = c.border }
		groups.WhichKeyValue = { fg = c.fg_muted }
	end

	if enabled("cmp") then
		groups.CmpItemAbbr = { fg = c.fg }
		groups.CmpItemAbbrDeprecated = { fg = c.comment, strikethrough = true }
		groups.CmpItemAbbrMatch = { fg = c.fg_accent, bold = true }
		groups.CmpItemAbbrMatchFuzzy = { fg = c.fg_accent, underline = true }
		groups.CmpItemMenu = { fg = c.comment }
		groups.CmpItemKindText = { fg = c.green }
		groups.CmpItemKindMethod = { fg = c.aqua }
		groups.CmpItemKindFunction = { fg = c.aqua }
		groups.CmpItemKindConstructor = { fg = c.aqua }
		groups.CmpItemKindField = { fg = c.red }
		groups.CmpItemKindVariable = { fg = c.fg }
		groups.CmpItemKindClass = { fg = c.aqua }
		groups.CmpItemKindInterface = { fg = c.aqua }
		groups.CmpItemKindModule = { fg = c.fg }
		groups.CmpItemKindProperty = { fg = c.red }
		groups.CmpItemKindUnit = { fg = c.green }
		groups.CmpItemKindValue = { fg = c.fg_muted }
		groups.CmpItemKindEnum = { fg = c.red }
		groups.CmpItemKindKeyword = { fg = c.blue }
		groups.CmpItemKindSnippet = { fg = c.fg_muted }
		groups.CmpItemKindColor = { fg = c.fg_muted }
		groups.CmpItemKindFile = { fg = c.fg }
		groups.CmpItemKindReference = { fg = c.yellow }
		groups.CmpItemKindFolder = { fg = c.blue }
		groups.CmpItemKindEnumMember = { fg = c.red }
		groups.CmpItemKindConstant = { fg = c.purple }
		groups.CmpItemKindStruct = { fg = c.aqua }
		groups.CmpItemKindEvent = { fg = c.yellow }
		groups.CmpItemKindOperator = { fg = c.aqua }
		groups.CmpItemKindTypeParameter = { fg = c.aqua }
		groups.CmpDoc = { bg = c.bg_float }
		groups.CmpDocBorder = { fg = c.border, bg = c.bg_float }
	end

	if enabled("nvim_tree") then
		groups.NvimTreeNormal = { fg = c.fg, bg = c.bg_sidebar }
		groups.NvimTreeVertSplit = { fg = c.border, bg = c.bg_sidebar }
		groups.NvimTreeRootFolder = { fg = c.fg_accent, bold = true }
		groups.NvimTreeGitDirty = { fg = c.modified }
		groups.NvimTreeGitNew = { fg = c.created }
		groups.NvimTreeGitDeleted = { fg = c.deleted }
		groups.NvimTreeGitStaged = { fg = c.created }
		groups.NvimTreeGitMerge = { fg = c.error }
		groups.NvimTreeGitRenamed = { fg = c.renamed }
		groups.NvimTreeGitIgnored = { fg = c.ignored }
		groups.NvimTreeEmptyFolderName = { fg = c.comment }
		groups.NvimTreeFolderIcon = { fg = c.blue }
		groups.NvimTreeFolderName = { fg = c.blue }
		groups.NvimTreeOpenedFolderName = { fg = c.blue, bold = true }
		groups.NvimTreeImageFile = { fg = c.purple }
		groups.NvimTreeSpecialFile = { fg = c.yellow }
		groups.NvimTreeSymlink = { fg = c.aqua }
		groups.NvimTreeCursorLine = { bg = c.bg_line }
		groups.NvimTreeOpenedFile = { fg = c.fg_accent }
		groups.NvimTreeIndentMarker = { fg = c.border }
		groups.NvimTreeStatusLine = { fg = c.comment, bg = c.bg_sidebar }
		groups.NvimTreeStatusLineNC = { fg = c.comment, bg = c.bg_sidebar }
		groups.NvimTreeWinSeparator = { fg = c.border, bg = c.bg_sidebar }
	end

	if enabled("bufferline") then
		groups.BufferLineOffsetSeparator = { bg = c.bg, fg = c.border }
		groups.BufferLineTab = { fg = c.comment, bg = c.bg_tab_inactive }
		groups.BufferLineTabSelected = { fg = c.fg, bg = c.bg_tab_active }
		groups.BufferLineTabClose = { fg = c.error }
		groups.BufferLineBuffer = { fg = c.fg, bg = c.bg_tab_inactive }
		groups.BufferLineBufferSelected = { fg = c.fg, bg = c.bg_tab_active }
		groups.BufferLineBufferVisible = { fg = c.fg_muted, bg = c.bg_tab_inactive }
		groups.BufferLineCloseButton = { fg = c.comment }
		groups.BufferLineCloseButtonSelected = { fg = c.error }
		groups.BufferLineCloseButtonVisible = { fg = c.comment }
		groups.BufferLineModified = { fg = c.modified }
		groups.BufferLineModifiedSelected = { fg = c.modified }
		groups.BufferLineModifiedVisible = { fg = c.modified }
		groups.BufferLineSeparator = { fg = c.border, bg = c.bg_tab_inactive }
		groups.BufferLineSeparatorSelected = { fg = c.border, bg = c.bg_tab_active }
		groups.BufferLineSeparatorVisible = { fg = c.border, bg = c.bg_tab_inactive }
		groups.BufferLineIndicatorSelected = { fg = c.fg_accent }
		groups.BufferLinePick = { fg = c.warning, bold = true }
		groups.BufferLinePickSelected = { fg = c.warning, bold = true }
		groups.BufferLineNumbers = { fg = c.comment }
		groups.BufferLineNumbersSelected = { fg = c.fg }
		groups.BufferLineNumbersVisible = { fg = c.comment }
		groups.BufferLineDuplicate = { fg = c.comment }
		groups.BufferLineDuplicateSelected = { fg = c.comment }
		groups.BufferLineDuplicateVisible = { fg = c.comment }
		groups.BufferLineError = { fg = c.error }
		groups.BufferLineErrorSelected = { fg = c.error }
		groups.BufferLineWarning = { fg = c.warning }
		groups.BufferLineWarningSelected = { fg = c.warning }
		groups.BufferLineInfo = { fg = c.info }
		groups.BufferLineInfoSelected = { fg = c.info }
		groups.BufferLineHint = { fg = c.hint }
		groups.BufferLineHintSelected = { fg = c.hint }
		groups.BufferLineDiagnostics = { fg = c.comment }
		groups.BufferLineDiagnosticsSelected = { fg = c.fg_muted }
		groups.BufferLineGroup = { fg = c.blue }
		groups.BufferLineGroupSelected = { fg = c.blue, bold = true }
		groups.OffsetNonText = { fg = c.border }
	end

	if enabled("indent_blankline") then
		groups.IblIndent = { fg = c.border }
		groups.IblScope = { fg = c.comment }
		groups.IblWhitespace = { fg = c.border }
	end

	if enabled("noice") then
		groups.NoiceCmdline = { bg = c.bg_float }
		groups.NoiceCmdlineIcon = { fg = c.fg_accent }
		groups.NoiceCmdlineIconSearch = { fg = c.warning }
		groups.NoiceMini = { fg = c.fg }
		groups.NoicePopup = { bg = c.bg_float }
		groups.NoicePopupBorder = { fg = c.border }
		groups.NoiceScrollbar = { bg = c.bg_scrollbar }
		groups.NoiceScrollbarThumb = { bg = c.bg_scrollbar_hover }
		groups.NoiceConfirm = { bg = c.bg_float }
		groups.NoiceLspProgressTitle = { fg = c.fg_accent }
		groups.NoiceLspProgressClient = { fg = c.blue }
		groups.NoiceLspProgressSpinner = { fg = c.yellow }
	end

	if enabled("trouble") then
		groups.TroubleNormal = { fg = c.fg, bg = c.bg_sidebar }
		groups.TroubleCount = { fg = c.purple, bold = true }
		groups.TroubleFoldIcon = { fg = c.comment }
		groups.TroubleText = { fg = c.fg }
		groups.TroubleTextInformation = { fg = c.info }
		groups.TroubleTextWarning = { fg = c.warning }
		groups.TroubleTextError = { fg = c.error }
		groups.TroubleSource = { fg = c.fg_accent }
		groups.TroubleIndent = { fg = c.border }
		groups.TroubleLocation = { fg = c.comment }
		groups.TroublePreview = { fg = c.fg, bg = c.bg_float }
		groups.TroubleSign = { fg = c.icon }
	end

	if enabled("gitsigns") then
		groups.GitSignsAdd = { fg = c.created }
		groups.GitSignsChange = { fg = c.modified }
		groups.GitSignsDelete = { fg = c.deleted }
		groups.GitSignsAddLn = { fg = c.created }
		groups.GitSignsChangeLn = { fg = c.modified }
		groups.GitSignsDeleteLn = { fg = c.deleted }
		groups.GitSignsAddNr = { fg = c.created }
		groups.GitSignsChangeNr = { fg = c.modified }
		groups.GitSignsDeleteNr = { fg = c.deleted }
		groups.GitSignsStagedAdd = { fg = c.created }
		groups.GitSignsStagedChange = { fg = c.modified }
		groups.GitSignsStagedDelete = { fg = c.deleted }
		groups.GitSignsAddInline = { fg = c.created, bg = c.created_bg }
		groups.GitSignsDeleteInline = { fg = c.deleted, bg = c.deleted_bg }
		groups.GitSignsChangeInline = { fg = c.modified, bg = c.modified_bg }
	end

	if enabled("hop") then
		groups.HopNextKey = { fg = c.fg_accent, bold = true }
		groups.HopNextKey1 = { fg = c.yellow, bold = true }
		groups.HopNextKey2 = { fg = c.comment }
		groups.HopUnmatched = { fg = c.comment }
		groups.HopCursor = { fg = c.fg, bg = c.bg_visual }
	end

	if enabled("illuminate") then
		groups.LspReferenceText = { bg = c.bg_highlighted }
		groups.LspReferenceRead = { bg = c.bg_highlighted }
		groups.LspReferenceWrite = { bg = c.bg_highlighted }
		groups.IlluminatedWordText = { bg = c.bg_highlighted }
		groups.IlluminatedWordRead = { bg = c.bg_highlighted }
		groups.IlluminatedWordWrite = { bg = c.bg_highlighted }
	end

	if enabled("mini") then
		groups.MiniCompletionActiveParameter = { underline = true, sp = c.fg_accent }
		groups.MiniCursorword = { bg = c.bg_highlighted }
		groups.MiniCursorwordCurrent = { bg = c.bg_highlighted }
		groups.MiniIndentscopeSymbol = { fg = c.comment }
		groups.MiniIndentscopePrefix = { nocombine = true }
		groups.MiniJump = { fg = c.fg_accent, bold = true }
		groups.MiniJump2dSpot = { fg = c.warning, bold = true, nocombine = true }
		groups.MiniJump2dSpotAux = { fg = c.comment, nocombine = true }
		groups.MiniJump2dLabel = { fg = c.fg_accent }
		groups.MiniStarterCurrent = { fg = c.fg_accent }
		groups.MiniStarterHeader = { fg = c.fg_accent }
		groups.MiniStarterInactive = { fg = c.comment }
		groups.MiniStarterItem = { fg = c.fg }
		groups.MiniStarterItemBullet = { fg = c.comment }
		groups.MiniStarterItemPrefix = { fg = c.warning }
		groups.MiniStarterSection = { fg = c.comment }
		groups.MiniStarterQuery = { fg = c.fg_accent }
		groups.MiniStatuslineDevinfo = { fg = c.fg, bg = c.bg_surface }
		groups.MiniStatuslineFileinfo = { fg = c.fg, bg = c.bg_surface }
		groups.MiniStatuslineModeCommand = { fg = c.bg, bg = c.warning }
		groups.MiniStatuslineModeInsert = { fg = c.bg, bg = c.fg_accent }
		groups.MiniStatuslineModeNormal = { fg = c.bg, bg = c.blue }
		groups.MiniStatuslineModeOther = { fg = c.bg, bg = c.purple }
		groups.MiniStatuslineModeReplace = { fg = c.bg, bg = c.error }
		groups.MiniStatuslineModeVisual = { fg = c.bg, bg = c.purple }
		groups.MiniTablineCurrent = { fg = c.fg, bg = c.bg_tab_active }
		groups.MiniTablineHidden = { fg = c.comment, bg = c.bg_tab_inactive }
		groups.MiniTablineModifiedCurrent = { fg = c.modified, bg = c.bg_tab_active }
		groups.MiniTablineModifiedHidden = { fg = c.modified, bg = c.bg_tab_inactive }
		groups.MiniTablineModifiedVisible = { fg = c.modified, bg = c.bg_tab_inactive }
		groups.MiniTablineVisible = { fg = c.fg_muted, bg = c.bg_tab_inactive }
		groups.MiniTestEmphasis = { bold = true }
		groups.MiniTestFail = { fg = c.error, bold = true }
		groups.MiniTestPass = { fg = c.created, bold = true }
		groups.MiniTrailspace = { bg = c.error }
	end

	if enabled("rainbow_delimiters") then
		groups.RainbowDelimiterRed = { fg = c.error }
		groups.RainbowDelimiterYellow = { fg = c.yellow }
		groups.RainbowDelimiterBlue = { fg = c.blue }
		groups.RainbowDelimiterOrange = { fg = c.orange }
		groups.RainbowDelimiterGreen = { fg = c.green }
		groups.RainbowDelimiterViolet = { fg = c.purple }
		groups.RainbowDelimiterCyan = { fg = c.aqua }
	end

	if enabled("neotree") then
		groups.NeoTreeNormal = { fg = c.fg, bg = c.bg_sidebar }
		groups.NeoTreeNormalNC = { fg = c.fg, bg = c.bg_sidebar }
		groups.NeoTreeVertSplit = { fg = c.border, bg = c.bg_sidebar }
		groups.NeoTreeWinSeparator = { fg = c.border, bg = c.bg_sidebar }
		groups.NeoTreeEndOfFile = { fg = c.bg_sidebar }
		groups.NeoTreeRootName = { fg = c.fg_accent, bold = true }
		groups.NeoTreeDotfile = { fg = c.comment }
		groups.NeoTreeHidden = { fg = c.hidden }
		groups.NeoTreeSymbolicLinkTarget = { fg = c.aqua }
		groups.NeoTreeTitleBar = { fg = c.fg, bg = c.bg_tab_active }
		groups.NeoTreeDimText = { fg = c.comment }
		groups.NeoTreeCursorLine = { bg = c.bg_line }
		groups.NeoTreeFloatBorder = { fg = c.border }
		groups.NeoTreeFloatNormal = { fg = c.fg, bg = c.bg_float }
		groups.NeoTreeFloatTitle = { fg = c.fg_accent }
		groups.NeoTreeGitAdded = { fg = c.created }
		groups.NeoTreeGitDeleted = { fg = c.deleted }
		groups.NeoTreeGitModified = { fg = c.modified }
		groups.NeoTreeGitUntracked = { fg = c.fg_muted }
		groups.NeoTreeGitIgnored = { fg = c.ignored }
		groups.NeoTreeGitStaged = { fg = c.created }
		groups.NeoTreeGitConflict = { fg = c.error }
		groups.NeoTreeIndentMarker = { fg = c.border }
		groups.NeoTreeExpander = { fg = c.comment }
		groups.NeoTreeFilterTerm = { fg = c.fg_accent }
		groups.NeoTreePreview = { fg = c.fg, bg = c.bg_float }
		groups.NeoTreeStatusLine = { fg = c.comment, bg = c.bg_sidebar }
		groups.NeoTreeStatusLineNC = { fg = c.comment, bg = c.bg_sidebar }
	end

	-- if enabled("snacks") then
	groups.SnacksDashboardNormal = { fg = c.fg, bg = c.bg_sidebar }
	groups.SnacksDashboardDesc = { fg = c.fg_muted }
	groups.SnacksDashboardFile = { fg = c.blue }
	groups.SnacksDashboardDir = { fg = c.aqua }
	groups.SnacksDashboardFooter = { fg = c.fg_muted }
	groups.SnacksDashboardHeader = { fg = c.fg_accent }
	groups.SnacksDashboardIcon = { fg = c.icon }
	groups.SnacksDashboardKey = { fg = c.fg_accent }
	groups.SnacksDashboardTerminal = { fg = c.fg, bg = c.bg_float }
	groups.SnacksDashboardSpecial = { fg = c.fg }
	groups.SnacksDashboardTitle = { link = "Title" }

	groups.SnacksIndent = { fg = c.bg_line }
	groups.SnacksIndentBlank = { link = "SnacksIndent" }
	groups.SnacksIndentScope = { fg = c.border }
	groups.SnacksIndentChunk = { fg = c.comment }
	--end

	return groups
end

return M
