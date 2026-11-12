-- Make highlight groups transparent while preserving their other attributes
local function make_transparent(name)
	local ok, hl = pcall(vim.api.nvim_get_hl, 0, { name = name, link = false })
	-- Groups nobody has defined yet must stay undefined: plugins that link them
	-- later (which-key does, with default = true) would otherwise find an empty
	-- definition and skip their own link.
	if ok and next(hl) then
		hl.bg = nil
		vim.api.nvim_set_hl(0, name, hl)
	end
end

local groups = {
	-- transparent background
	"Normal",
	"NormalFloat",
	"FloatBorder",
	"FloatTitle",
	"FloatFooter",
	"Pmenu",
	"PmenuMatch",
	"Terminal",
	"EndOfBuffer",
	"FoldColumn",
	"Folded",
	"SignColumn",
	"LineNr",
	"CursorLineNr",
	"StatusLine",
	"StatusLineNC",
	"NormalNC",
	"WhichKeyFloat",
	"WhichKeyBorder",
	"TelescopeBorder",
	"TelescopeNormal",
	"TelescopePromptBorder",
	"TelescopePromptTitle",
	-- neotree
	"NeoTreeNormal",
	"NeoTreeNormalNC",
	"NeoTreeVertSplit",
	"NeoTreeWinSeparator",
	"NeoTreeEndOfBuffer",
	-- nvim-tree
	"NvimTreeNormal",
	"NvimTreeVertSplit",
	"NvimTreeEndOfBuffer",
	-- notify
	"NotifyINFOBody",
	"NotifyERRORBody",
	"NotifyWARNBody",
	"NotifyTRACEBody",
	"NotifyDEBUGBody",
	"NotifyINFOTitle",
	"NotifyERRORTitle",
	"NotifyWARNTitle",
	"NotifyTRACETitle",
	"NotifyDEBUGTitle",
	"NotifyINFOBorder",
	"NotifyERRORBorder",
	"NotifyWARNBorder",
	"NotifyTRACEBorder",
	"NotifyDEBUGBorder",
	-- snacks: lazygit, terminals and pickers paint their own window background
	-- (SnacksNormal is remapped from Normal by snacks.win), which stays opaque
	-- and a shade darker than the theme background unless it is cleared here.
	"SnacksNormal",
	"SnacksNormalNC",
	"SnacksWinBar",
	"SnacksWinBarNC",
	-- popups: same dark surface colour as the panels above
	"BlinkCmpMenu",
	"BlinkCmpMenuBorder",
	"BlinkCmpDoc",
	"BlinkCmpDocBorder",
	"BlinkCmpSignatureHelp",
	"BlinkCmpSignatureHelpBorder",
	"NoiceCmdline",
	"NoiceCmdlinePopup",
	"NoiceCmdlinePopupBorder",
	"NoiceCmdlinePopupBorderSearch",
	"NoiceConfirm",
	"NoiceConfirmBorder",
	"TelescopePromptNormal",
	"TroubleNormal",
	"LspInfoBorder",
	-- diagnostics: themes paint a dark chip behind the sign icon, and noice
	-- links every cmdline border to these groups. It also builds variants on
	-- demand (NoiceCmdlinePopupBorderLua, ...BorderSearch) that link back to
	-- them, so clearing the root keeps the whole family transparent.
	"DiagnosticSignInfo",
	"DiagnosticSignWarn",
	"DiagnosticSignError",
	"DiagnosticSignHint",
	"DiagnosticSignOk",
}

-- The current line goes see-through too, leaving its number to mark it. The
-- file tree marks its selection with that line alone, so it keeps the colour.
local function apply()
	local cursorline = vim.api.nvim_get_hl(0, { name = "CursorLine", link = false })
	if cursorline.bg then
		vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = cursorline.bg })
	else
		make_transparent("NeoTreeCursorLine")
	end

	for _, name in ipairs(groups) do
		make_transparent(name)
	end
	make_transparent("CursorLine")
end

apply()

local augroup = vim.api.nvim_create_augroup("transparency", { clear = true })

-- Every colourscheme, and Omarchy's theme hot-reload, rebuild all highlight
-- groups, so the transparency has to be re-applied after each one.
vim.api.nvim_create_autocmd("ColorScheme", {
	group = augroup,
	callback = apply,
})

-- Plugins build their own groups when they load, which happens after this
-- file runs, so the patch is applied again once each one is ready.
vim.api.nvim_create_autocmd("User", {
	group = augroup,
	pattern = { "VeryLazy", "LazyLoad" },
	callback = apply,
})
