
local lush = require('lush')
local hsl = lush.hsl

local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
     ColorColumn    { bg = hsl("#062329") }, -- Columns set with 'colorcolumn'
     Conceal        { bg = hsl("#062329") }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
     Cursor         { fg = hsl("#0b3335"), bg = hsl("#8cde94") }, -- Character under the cursor
    -- CurSearch      { }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    -- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
     CursorColumn   { bg = hsl("#062329")}, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    -- CursorLine     { }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    -- Directory      { }, -- Directory names (and other special names in listings)
    -- DiffAdd        { }, -- Diff mode: Added line |diff.txt|
    -- DiffChange     { }, -- Diff mode: Changed line |diff.txt|
    -- DiffDelete     { }, -- Diff mode: Deleted line |diff.txt|
    -- DiffText       { }, -- Diff mode: Changed text within a changed line |diff.txt|
     EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
     TermCursor     { fg = hsl("#8cde94"), bg = hsl("#8cde94") }, -- Cursor in a focused terminal
     TermCursorNC   { fg = hsl("#8cde94"), bg = hsl("#8cde94") }, -- Cursor in an unfocused terminal
     ErrorMsg       { bg = hsl("#ff0000"), fg = hsl("#d1b897")}, -- Error messages on the command line
     VertSplit      { bg = hsl("#062329") }, -- Column separating vertically split windows
     Folded         { }, -- Line used for closed folds
     FoldColumn     { bg = hsl("#062329") }, -- 'foldcolumn'
     SignColumn     { }, -- Column where |signs| are displayed
    -- IncSearch      { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute     { }, -- |:substitute| replacement text highlighting
     LineNr         { fg = hsl("#d1b897") }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    -- LineNrAbove    { }, -- Line number for when the 'relativenumber' option is set, above the cursor line
    -- LineNrBelow    { }, -- Line number for when the 'relativenumber' option is set, below the cursor line
     CursorLineNr   { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
     CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
     MatchParen     { bg = hsl("#8cde94") }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
     ModeMsg        { fg = hsl("#7ad0c6") }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea        { }, -- Area for messages and cmdline
    -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
     MoreMsg        { }, -- |more-prompt|
     NonText        { fg = hsl("#d1b897") }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
     Normal         { bg = hsl("#062329"), fg=hsl("#d1b897") }, -- Normal text
     NormalFloat    { bg = hsl("#062329"), fg=hsl("#d1b897") }, -- Normal text in floating windows.
    -- FloatBorder    { }, -- Border of floating windows.
     FloatTitle     { }, -- Title of floating windows.
    -- NormalNC       { }, -- normal text in non-current windows
     Pmenu          { fg = hsl("#d1b897") }, -- Popup menu: Normal item.
     PmenuSel       { fg = hsl("#ffffff"), bg = hsl"#8cde94" }, -- Popup menu: Selected item.
     PmenuKind      { fg = hsl("#d1b897") }, -- Popup menu: Normal item "kind"
    -- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
     PmenuExtra     { fg = hsl("#d1b897") }, -- Popup menu: Normal item "extra text"
    -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
     PmenuSbar      { fg = hsl("#062329")}, -- Popup menu: Scrollbar.
     PmenuThumb     { fg = hsl("#ffffff") }, -- Popup menu: Thumb of the scrollbar.
    -- Question       { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
     Search         { bg = hsl("#8cde94") }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
     StatusLine     { fg = hsl("#d1b897") }, -- Status line of current window
     StatusLineNC   { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
     TabLine        { fg = hsl("#062329")}, -- Tab pages line, not active tab page label
     TabLineFill    { }, -- Tab pages line, where there are no labels
     TabLineSel     { }, -- Tab pages line, active tab page label
     Title          { fg = hsl("#d1b897") }, -- Titles for output from ":set all", ":autocmd" etc.
     Visual         { bg = hsl("#0000ff")}, -- Visual mode selection
    -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
     WarningMsg     { bg = hsl("#ffaa00"), fg = hsl("#d1b897")}, -- Warning messages
     Whitespace     { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
     Winseparator   { fg = hsl("#d1b897") }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
     WildMenu       { }, -- Current match in 'wildmenu' completion
    -- WinBar         { }, -- Window bar of current window
    -- WinBarNC       { }, -- Window bar of not-current windows

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.

     Comment        { fg = hsl("#2ec90c") }, -- Any comment

     Constant       { fg = hsl("#7ad0c6") }, -- (*) Any constant
     String         { fg = hsl("#2ec90c") }, --   A string constant: "this is a string"
     Character      { fg = hsl("#d1b897") }, --   A character constant: 'c', '\n'
     Number         { fg = hsl("#7ad0c6") }, --   A number constant: 234, 0xff
     Boolean        { fg = hsl("#ffffff") }, --   A boolean constant: TRUE, false
     Float          { fg = hsl("#7ad0c6") }, --   A floating point constant: 2.3e10

     Identifier     { fg = hsl("#c1d1e3") }, -- (*) Any variable name
     Function       { fg = hsl("#ffffff") }, --   Function name (also: methods for classes)

     Statement      { fg = hsl("#d1b897") }, -- (*) Any statement
     Conditional    { fg = hsl("#ffffff") }, --   if, then, else, endif, switch, etc.
     Repeat         { fg = hsl("#ffffff") }, --   for, do, while, etc.
     Label          { fg = hsl("#ffffff") }, --   case, default, etc.
     Operator       { fg = hsl("#d1b897") }, --   "sizeof", "+", "*", etc.
     Keyword        { fg = hsl("#d1b897") }, --   any other keyword
     Exception      { fg = hsl("#c1d1e3") }, --   try, catch, throw

     PreProc        { fg = hsl("#ffffff") }, -- (*) Generic Preprocessor
     Include        { fg = hsl("#ffffff") }, --   Preprocessor #include
     Define         { fg = hsl("#ffffff") }, --   Preprocessor #define
     Macro          { fg = hsl("#8cde94") }, --   Same as Define
     PreCondit      { fg = hsl("#ffffff") }, --   Preprocessor #if, #else, #endif, etc.

     Type           { fg = hsl("#d1b897") }, -- (*) int, long, char, etc.
     StorageClass   { fg = hsl("#c1d1e3") }, --   static, register, volatile, etc.
     Structure      { fg = hsl("#ffffff") }, --   struct, union, enum, etc.
     Typedef        { fg = hsl("#d1b897") }, --   A typedef

     Special        { fg = hsl("#8cde94") }, -- (*) Any special symbol
     SpecialChar    { fg = hsl("#8cde94") }, --   Special character in a constant
     Tag            { fg = hsl("#8cde94") }, --   You can use CTRL-] on this
     Delimiter      { fg = hsl("#d1b897") }, --   Character that needs attention
     SpecialComment { fg = hsl("#c1d1e3") }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

     Underlined     { gui = "underline" }, -- Text that stands out, HTML links
    -- Ignore         { fg= hsl("#062329")}, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
     Error          { bg = hsl("#ff0000"), fg = hsl"#d1b897" }, -- Any erroneous construct
     Todo           { fg = hsl("#ffffff") }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- DiagnosticError            { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticOk               { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticVirtualTextOk    { } , -- Used for "Ok" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
    -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.


    -- sym"@text.literal"      { }, -- Comment
    sym"@text.reference"    { fg = hsl("#d1b897") }, -- Identifier
    sym"@text.title"        { fg = hsl("#d1b897") }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo
    -- sym"@comment"           { }, -- Comment
    -- sym"@punctuation"       { }, -- Delimiter
    -- sym"@constant"          { }, -- Constant
    -- sym"@constant.builtin"  { bg = hsl("#8cde94") }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- String
    -- sym"@string.escape"     { }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    sym"@character"         { fg = hsl("#8cde94") }, -- Character
    -- sym"@number"            { }, -- Number
    sym"@boolean"           { fg = hsl("#c1d1e3") }, -- Boolean
    -- sym"@float"             { }, -- Float
    sym"@function"          { fg = hsl("#ffffff") }, -- Function
    sym"@function.builtin"  { fg = hsl("#ffffff") }, -- Special
    -- sym"@function.macro"    { }, -- Macro
    -- sym"@parameter"         { }, -- Identifier
    -- sym"@method"            { }, -- Function
    sym"@field"             { fg = hsl("#d1b897") }, -- Identifier
    sym"@property"          { fg = hsl("#d1b897") }, -- Identifier
    sym"@constructor.special"{ bg = hsl("#8cde94") }, -- Special
    sym"@conditional"       { fg = hsl("#ffffff") }, -- Conditional
    sym"@repeat"            { fg = hsl("#ffffff") }, -- Repeat
    -- sym"@label"             { }, -- Label
    -- sym"@operator"          { }, -- Operator
    sym"@keyword"           { fg = hsl("#d1b897") }, -- Keyword
    -- sym"@exception"         { }, -- Exception
    -- sym"@variable"          { }, -- Identifier
    sym"@type"              { fg = hsl("#8cde94") }, -- Type
    sym"@type.definition"   { fg = hsl("#ffffff") }, -- Typedef
    -- sym"@storageclass"      { fg = hsl("#d1b897") }, -- StorageClass
    sym"@structure"         { fg = hsl("#d1b897") }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    sym"@include"           { fg = hsl("#ffffff") }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
