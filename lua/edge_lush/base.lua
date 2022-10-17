--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require("lush")
local palette = require("edge_lush.palette")

local terminal = {
  ["red"] = palette.red,
  ["yellow"] = palette.yellow,
  ["green"] = palette.green,
  ["cyan"] = palette.cyan,
  ["blue"] = palette.blue,
  ["purple"] = palette.purple,
}
if vim.o.background == "dark" then
  terminal["black"] = palette.bg3
  terminal["white"] = palette.fg
else
  terminal["black"] = palette.fg
  terminal["white"] = palette.bg3
end

vim.g.terminal_color_0 = terminal.black.hex
vim.g.terminal_color_1 = terminal.red.hex
vim.g.terminal_color_2 = terminal.green.hex
vim.g.terminal_color_3 = terminal.yellow.hex
vim.g.terminal_color_4 = terminal.blue.hex
vim.g.terminal_color_5 = terminal.purple.hex
vim.g.terminal_color_6 = terminal.cyan.hex
vim.g.terminal_color_7 = terminal.white.hex
vim.g.terminal_color_8 = terminal.black.hex
vim.g.terminal_color_9 = terminal.red.hex
vim.g.terminal_color_10 = terminal.green.hex
vim.g.terminal_color_11 = terminal.yellow.hex
vim.g.terminal_color_12 = terminal.blue.hex
vim.g.terminal_color_13 = terminal.purple.hex
vim.g.terminal_color_14 = terminal.cyan.hex
vim.g.terminal_color_15 = terminal.white.hex

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local diff_group
if vim.o.diff then
  diff_group = lush(function()
    return {
      CursorColumn({ gui = "bold" }), -- Screen-column at the cursor, when 'cursorcolumn' is set.
      CursorLine({ gui = "underline" }), -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
      CursorLineNr({ gui = "underline", fg = palette.grey }), -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
      CurrentWord({ bg = palette.green, fg = palette.bg0 }),
    }
  end)
else
  diff_group = lush(function()
    return {
      CursorColumn({ bg = palette.bg1 }), -- Screen-column at the cursor, when 'cursorcolumn' is set.
      CursorLine({ bg = palette.bg1 }), -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
      CursorLineNr({ fg = palette.grey }), -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
      CurrentWord({ bg = palette.bg2 }),
    }
  end)
end

local base_group = lush(function()
  return {
    -- The following are all the Neovim default highlight groups from the docs
    -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
    -- probably style all of these at a bare minimum.
    --
    -- Referenced/linked groups must come before being referenced/lined,
    -- so the order shown ((mostly) alphabetical) is likely
    -- not the order you will end up with.
    --
    -- You can uncomment these and leave them empty to disable any
    -- styling for that group (meaning they mostly get styled as Normal)
    -- or leave them commented to apply vims default colouring or linking.

    Fg({ fg = palette.fg }),
    Grey({ fg = palette.grey }),
    Red({ fg = palette.red }),
    Yellow({ fg = palette.yellow }),
    Green({ fg = palette.green }),
    Cyan({ fg = palette.cyan }),
    Blue({ fg = palette.blue }),
    Purple({ fg = palette.purple }),

    RedItalic({ gui = "italic", fg = palette.red }),
    YellowItalic({ gui = "italic", fg = palette.yellow }),
    GreenItalic({ gui = "italic", fg = palette.green }),
    CyanItalic({ gui = "italic", fg = palette.cyan }),
    BlueItalic({ gui = "italic", fg = palette.blue }),
    PurpleItalic({ gui = "italic", fg = palette.purple }),

    RedSign({ fg = palette.red }),
    YellowSign({ fg = palette.yellow }),
    GreenSign({ fg = palette.green }),
    CyanSign({ fg = palette.cyan }),
    BlueSign({ fg = palette.blue }),
    PurpleSign({ fg = palette.purple }),

    -- TODO: docs {{{
    Terminal({ bg = palette.bg0, fg = palette.fg }),
    ToolbarLine({ bg = palette.bg2, fg = palette.fg }),
    ToolbarButton({ bg = palette.bg_purple, fg = palette.bg0 }),
    debugBreakpoint({ bg = palette.bg_red, fg = palette.bg0 }),
    debugPC({ bg = palette.bg_green, fg = palette.bg0 }),
    StatusLineTerm({ bg = palette.bg2, fg = palette.fg }),
    StatusLineTermNC({ bg = palette.bg1, fg = palette.grey }),
    Float({ fg = palette.green }),

    WinBarNC({ Grey }),

    WarningFloat({ bg = palette.bg2, fg = palette.yellow }),
    ErrorFloat({ bg = palette.bg2, fg = palette.red }),
    InfoFloat({ bg = palette.bg2, fg = palette.blue }),
    HintFloat({ bg = palette.bg2, fg = palette.green }),

    ErrorText({ sp = palette.red, gui = "undercurl" }),
    WarningText({ sp = palette.yellow, gui = "undercurl" }),
    InfoText({ sp = palette.blue, gui = "undercurl" }),
    HintText({ sp = palette.green, gui = "undercurl" }),

    VirtualTextWarning({ Yellow }),
    VirtualTextError({ Red }),
    VirtualTextInfo({ Blue }),
    VirtualTextHint({ Green }),

    DiagnosticFloatingError({ ErrorFloat }),
    DiagnosticFloatingWarn({ WarningFloat }),
    DiagnosticFloatingInfo({ InfoFloat }),
    DiagnosticFloatingHint({ HintFloat }),
    DiagnosticError({ ErrorText }),
    DiagnosticWarn({ WarningText }),
    DiagnosticInfo({ InfoText }),
    DiagnosticHint({ HintText }),
    DiagnosticVirtualTextError({ VirtualTextError }),
    DiagnosticVirtualTextWarn({ VirtualTextWarning }),
    DiagnosticVirtualTextInfo({ VirtualTextInfo }),
    DiagnosticVirtualTextHint({ VirtualTextHint }),
    DiagnosticUnderlineError({ ErrorText }),
    DiagnosticUnderlineWarn({ WarningText }),
    DiagnosticUnderlineInfo({ InfoText }),
    DiagnosticUnderlineHint({ HintText }),
    DiagnosticSignError({ RedSign }),
    DiagnosticSignWarn({ YellowSign }),
    DiagnosticSignInfo({ BlueSign }),
    DiagnosticSignHint({ GreenSign }),
    healthError({ Red }),
    healthSuccess({ Green }),
    healthWarning({ Yellow }),
    -- }}} docs

    Comment({ gui = "italic", fg = palette.grey }), -- any comment
    ColorColumn({ bg = palette.bg1 }), -- used for the columns set with 'colorcolumn'
    Conceal({ fg = palette.grey_dim }), -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor({ gui = "reverse" }), -- character under the cursor
    vCursor({ Cursor }), -- TODO: docs
    iCursor({ Cursor }), -- TODO: docs
    lCursor({ Cursor }), -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM({ Cursor }), -- like Cursor, but used when in IME mode |CursorIM|

    Directory({ fg = palette.green }), -- directory names (and other special names in listings)
    DiffAdd({ bg = palette.diff_green }), -- diff mode: Added line |diff.txt|
    DiffChange({ bg = palette.diff_blue }), -- diff mode: Changed line |diff.txt|
    DiffDelete({ bg = palette.diff_red }), -- diff mode: Deleted line |diff.txt|
    DiffText({ bg = palette.blue, fg = palette.bg0 }), -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer({ bg = palette.bg0, fg = palette.bg4 }), -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    TermCursor({ Cursor }), -- cursor in a focused terminal
    -- TermCursorNC { }, -- TODO(meijieru): cursor in an unfocused terminal
    ErrorMsg({ gui = "bold,underline", fg = palette.red }), -- error messages on the command line
    VertSplit({ fg = palette.black }), -- the column separating vertically split windows
    WinSeparator({ VertSplit }), -- separators between window splits
    Folded({ bg = palette.bg1, fg = palette.grey }), -- line used for closed folds
    FoldColumn({ fg = palette.grey_dim }), -- 'foldcolumn'
    SignColumn({ fg = palette.fg }), -- column where |signs| are displayed
    IncSearch({ bg = palette.bg_blue, fg = palette.bg0 }), -- 'incsearch' highlighting, also used for the text replaced with ":s///c"
    Substitute({ bg = palette.yellow, fg = palette.bg0 }), -- |:substitute| replacement text highlighting
    LineNr({ fg = palette.grey_dim }), -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    MatchParen({ bg = palette.bg4 }), -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg({ gui = "bold", fg = palette.fg }), -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- TODO(meijieru): Area for messages and cmdline
    -- MsgSeparator({ StatusLine }), -- TODO(meijieru): Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg({ gui = "bold", fg = palette.blue }), -- |more-prompt|
    NonText({ fg = palette.bg4 }), -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal({ bg = palette.bg0, fg = palette.fg }), -- normal text
    NormalFloat({ bg = palette.bg2, fg = palette.fg }), -- Normal text in floating windows.
    -- NormalNC     { }, -- TODO(meijieru): normal text in non-current windows
    Pmenu({ bg = palette.bg2, fg = palette.fg }), -- Popup menu: normal item.
    PmenuSel({ bg = palette.bg_blue, fg = palette.bg0 }), -- Popup menu: selected item.
    PmenuSbar({ bg = palette.bg2 }), -- Popup menu: scrollbar.
    PmenuThumb({ bg = palette.bg_grey }), -- Popup menu: Thumb of the scrollbar.
    Question({ fg = palette.yellow }), -- |hit-enter| prompt and yes/no questions
    QuickFixLine({ gui = "bold", fg = palette.purple }), -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search({ bg = palette.bg_green, fg = palette.bg0 }), -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SpecialKey({ fg = palette.bg4 }), -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad({ sp = palette.red, gui = "undercurl" }), -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap({ sp = palette.yellow, gui = "undercurl" }), -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal({ sp = palette.blue, gui = "undercurl" }), -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare({ sp = palette.purple, gui = "undercurl" }), -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine({ bg = palette.bg2, fg = palette.fg }), -- status line of current window
    StatusLineNC({ bg = palette.bg1, fg = palette.grey }), -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine({ bg = palette.bg4, fg = palette.fg }), -- tab pages line, not active tab page label
    TabLineFill({ bg = palette.bg1, fg = palette.grey }), -- tab pages line, where there are no labels
    TabLineSel({ bg = palette.bg_purple, fg = palette.bg0 }), -- tab pages line, active tab page label
    Title({ gui = "bold", fg = palette.purple }), -- titles for output from ":set all", ":autocmd" etc.
    Visual({ bg = palette.bg3 }), -- Visual mode selection
    VisualNOS({ bg = palette.bg3, gui = "underline" }), -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg({ gui = "bold", fg = palette.yellow }), -- warning messages
    Whitespace({ fg = palette.bg4 }), -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu({ PmenuSel }), -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant({ fg = palette.yellow }), -- (preferred) any constant
    String({ fg = palette.green }), --   a string constant: "this is a string"
    Character({ fg = palette.green }), --  a character constant: 'c', '\n'
    Number({ fg = palette.green }), --   a number constant: 234, 0xff
    Boolean({ fg = palette.green }), --  a boolean constant: TRUE, false
    FloatingError({ ErrorFloat }), --    a floating point constant: 2.3e10
    FloatBorder({ bg = palette.bg2, fg = palette.grey }),

    Identifier({ fg = palette.cyan }), -- (preferred) any variable name
    Function({ fg = palette.blue }), -- function name (also: methods for classes)

    Statement({ fg = palette.purple }), -- (preferred) any statement
    Conditional({ fg = palette.purple }), --  if, then, else, endif, switch, etc.
    Repeat({ fg = palette.purple }), --   for, do, while, etc.
    Label({ fg = palette.yellow }), --    case, default, etc.
    Operator({ fg = palette.purple }), -- "sizeof", "+", "*", etc.
    Keyword({ fg = palette.purple }), --  any other keyword
    Exception({ fg = palette.purple }), --  try, catch, throw

    PreProc({ fg = palette.purple }), -- (preferred) generic Preprocessor
    Include({ fg = palette.purple }), --  preprocessor #include
    Define({ fg = palette.purple }), --   preprocessor #define
    Macro({ fg = palette.yellow }), --    same as Define
    PreCondit({ fg = palette.purple }), --  preprocessor #if, #else, #endif, etc.

    Type({ fg = palette.red }), -- (preferred) int, long, char, etc.
    StorageClass({ fg = palette.red }), -- static, register, volatile, etc.
    Typedef({ fg = palette.purple }), --  A typedef

    Special({ fg = palette.yellow }), -- (preferred) any special symbol
    SpecialChar({ fg = palette.yellow }), --  special character in a constant
    Tag({ fg = palette.yellow }), --    you can use CTRL-] on this
    Delimiter({ fg = palette.fg }), --  character that needs attention
    SpecialComment({ gui = "italic", fg = palette.grey }), -- special things inside a comment
    Debug({ fg = palette.yellow }), --    debugging statements

    Underlined({ gui = "underline" }), -- (preferred) text that stands out, HTML links
    Bold({ gui = "bold" }),
    Italic({ gui = "italic" }),

    -- ("Ignore", below, may be invisible...)
    Ignore({ fg = palette.grey }), -- (preferred) left blank, hidden  |hl-Ignore|
    Error({ fg = palette.red }), -- (preferred) any erroneous construct
    Todo({ gui = "italic", fg = palette.red }), -- (preferred) anything that needs extra attention, mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    LspReferenceText({ diff_group.CurrentWord }), -- used for highlighting "text" references
    LspReferenceRead({ diff_group.CurrentWord }), -- used for highlighting "read" references
    LspReferenceWrite({ diff_group.CurrentWord }), -- used for highlighting "write" references
    LspCodeLens({ VirtualTextInfo }), -- Used to color the virtual text of the codelens
    LspCodeLensSeparator({ VirtualTextHint }),
    LspSignatureActiveParameter({ Search }),

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TODO: docs {{{
    TSWarning({ bg = palette.yellow, gui = "bold", fg = palette.bg0 }),
    TSDanger({ bg = palette.red, gui = "bold", fg = palette.bg0 }),
    TSNote({ bg = palette.blue, gui = "bold", fg = palette.bg0 }),
    TSStrong({ gui = "bold" }),

    TSMath({ Green }),
    TSStructure({ CyanItalic }),
    TSKeywordOperator({ Purple }),
    -- }}} docs

    TSAnnotation({ Purple }), -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    TSAttribute({ Yellow }), -- (unstable) TODO: docs
    TSBoolean({ Green }), -- For booleans.
    TSCharacter({ Green }), -- For characters.
    TSComment({ Comment }), -- For comment blocks.
    TSConstructor({ Blue }), -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    TSConditional({ Purple }), -- For keywords related to conditionnals.
    TSConstant({ RedItalic }), -- For constants
    TSConstBuiltin({ CyanItalic }), -- For constant that are built in the language: `nil` in Lua.
    TSConstMacro({ CyanItalic }), -- For constants that are defined by macros: `NULL` in C.
    -- TSError              { },    -- For syntax/parser errors.
    TSException({ Purple }), -- For exception related keywords.
    TSField({ Blue }), -- For fields.
    TSFloat({ Green }), -- For floats.
    TSFunction({ Blue }), -- For function (calls and definitions).
    TSFuncBuiltin({ Blue }), -- For builtin functions: `table.insert` in Lua.
    TSFuncMacro({ Blue }), -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSInclude({ Purple }), -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSKeyword({ Purple }), -- For keywords that don't fall in previous categories.
    TSKeywordFunction({ Purple }), -- For keywords used to define a fuction.
    TSLabel({ Purple }), -- For labels: `label:` in C and `:label:` in Lua.
    TSMethod({ Blue }), -- For method calls and definitions.
    TSNamespace({ Yellow }), -- For identifiers referring to modules and namespaces.
    TSNone({ Fg }), -- TODO: docs
    TSNumber({ Green }), -- For all numbers
    TSOperator({ Purple }), -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter({ RedItalic }), -- For parameters of a function.
    TSParameterReference({ RedItalic }), -- For references to parameters of a function.
    TSProperty({ Blue }), -- Same as `TSField`.
    TSPunctDelimiter({ Grey }), -- For delimiters ie: `.`
    TSPunctBracket({ Grey }), -- For brackets and parens.
    TSPunctSpecial({ Yellow }), -- For special punctutation that does not fall in the catagories before.
    TSRepeat({ Purple }), -- For keywords related to loops.
    TSStorageClass({ Purple }),
    TSString({ Green }), -- For strings.
    TSStringRegex({ Yellow }), -- For regexes.
    TSStringEscape({ Yellow }), -- For escape characters within a string.
    TSSymbol({ Red }), -- For identifiers referring to symbols or atoms.
    TSType({ Yellow }), -- For types.
    TSTypeBuiltin({ YellowItalic }), -- For builtin types.
    TSVariable({ Fg }), -- Any variable name that does not have another highlight.
    TSVariableBuiltin({ CyanItalic }), -- Variable names that are defined by the languages, like `this` or `self`.

    TSTag({ RedItalic }), -- Tags like html tag names.
    TSTagDelimiter({ Purple }), -- Tag delimiter like `<` `>` `/`
    TSText({ Green }), -- For strings considered text in a markup language.
    TSEmphasis({ gui = "italic" }), -- For text to be represented with emphasis.
    TSUnderline({ gui = "underline" }), -- For text to be represented with an underline.
    TSStrike({ Grey }), -- For strikethrough text.
    TSTitle({ Title }), -- Text that is part of a title.
    TSLiteral({ String }), -- Literal text.
    TSURI({ gui = "underline", fg = palette.green }), -- Any URI like a link or email.
  }
end)

local ts_group = lush(function()
  return {}
end)
if vim.fn.has("nvim-0.8.0") then
  ts_group = lush(function(injected_functions)
    local sym = injected_functions.sym
    return {
      sym("@annotation")({ base_group.TSAnnotation }),
      sym("@attribute")({ base_group.TSAttribute }),
      sym("@boolean")({ base_group.TSBoolean }),
      sym("@character")({ base_group.TSCharacter }),
      sym("@comment")({ base_group.TSComment }),
      sym("@conditional")({ base_group.TSConditional }),
      sym("@constant")({ base_group.TSConstant }),
      sym("@constant.builtin")({ base_group.TSConstBuiltin }),
      sym("@constant.macro")({ base_group.TSConstMacro }),
      sym("@constructor")({ base_group.TSConstructor }),
      sym("@exception")({ base_group.TSException }),
      sym("@field")({ base_group.TSField }),
      sym("@float")({ base_group.TSFloat }),
      sym("@function")({ base_group.TSFunction }),
      sym("@function.builtin")({ base_group.TSFuncBuiltin }),
      sym("@function.macro")({ base_group.TSFuncMacro }),
      sym("@include")({ base_group.TSInclude }),
      sym("@keyword")({ base_group.TSKeyword }),
      sym("@keyword.function")({ base_group.TSKeywordFunction }),
      sym("@keyword.operator")({ base_group.TSKeywordOperator }),
      sym("@label")({ base_group.TSLabel }),
      sym("@method")({ base_group.TSMethod }),
      sym("@namespace")({ base_group.TSNamespace }),
      sym("@none")({ base_group.TSNone }),
      sym("@number")({ base_group.TSNumber }),
      sym("@operator")({ base_group.TSOperator }),
      sym("@parameter")({ base_group.TSParameter }),
      sym("@parameter.reference")({ base_group.TSParameterReference }),
      sym("@property")({ base_group.TSProperty }),
      sym("@punctuation.bracket")({ base_group.TSPunctBracket }),
      sym("@punctuation.delimiter")({ base_group.TSPunctDelimiter }),
      sym("@punctuation.special")({ base_group.TSPunctSpecial }),
      sym("@repeat")({ base_group.TSRepeat }),
      sym("@storageclass")({ base_group.TSStorageClass }),
      sym("@string")({ base_group.TSString }),
      sym("@string.escape")({ base_group.TSStringEscape }),
      sym("@string.regex")({ base_group.TSStringRegex }),
      sym("@symbol")({ base_group.TSSymbol }),
      sym("@tag")({ base_group.TSTag }),
      sym("@tag.delimiter")({ base_group.TSTagDelimiter }),
      sym("@text")({ base_group.TSText }),
      sym("@strike")({ base_group.TSStrike }),
      sym("@math")({ base_group.TSMath }),
      sym("@type")({ base_group.TSType }),
      sym("@type.builtin")({ base_group.TSTypeBuiltin }),
      sym("@uri")({ base_group.TSURI }),
      sym("@variable")({ base_group.TSVariable }),
      sym("@variable.builtin")({ base_group.TSVariableBuiltin }),
    }
  end)
end

-- return our parsed theme for extension or use else where.
return lush.merge({ base_group, diff_group, ts_group })

-- vi:nowrap
