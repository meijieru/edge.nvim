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
local palette = require("lush_theme.palette")

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function()
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

    -- TODO(meijieru): add italic
    RedItalic({ fg = palette.red }),
    YellowItalic({ fg = palette.yellow }),
    GreenItalic({ fg = palette.green }),
    CyanItalic({ fg = palette.cyan }),
    BlueItalic({ fg = palette.blue }),
    PurpleItalic({ fg = palette.purple }),

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

    WarningFloat({ bg = palette.bg2, fg = palette.yellow }),
    ErrorFloat({ bg = palette.bg2, fg = palette.red }),
    InfoFloat({ bg = palette.bg2, fg = palette.blue }),
    HintFloat({ bg = palette.bg2, fg = palette.green }),

    CurrentWord({ bg = palette.bg2 }),

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
    CursorColumn({ bg = palette.bg1 }), -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine({ bg = palette.bg1 }), -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.

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
    Folded({ bg = palette.bg1, fg = palette.grey }), -- line used for closed folds
    FoldColumn({ fg = palette.grey_dim }), -- 'foldcolumn'
    SignColumn({ fg = palette.fg }), -- column where |signs| are displayed
    IncSearch({ bg = palette.bg_blue, fg = palette.bg0 }), -- 'incsearch' highlighting, also used for the text replaced with ":s///c"
    Substitute({ bg = palette.yellow, fg = palette.bg0 }), -- |:substitute| replacement text highlighting
    LineNr({ fg = palette.grey_dim }), -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr({ fg = palette.grey }), -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
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
    Structure({ fg = palette.red }), --  struct, union, enum, etc.
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
    Error({ fg = palette.purple }), -- (preferred) any erroneous construct
    Todo({ gui = "italic", fg = palette.red }), -- (preferred) anything that needs extra attention, mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    LspReferenceText({ CurrentWord }), -- used for highlighting "text" references
    LspReferenceRead({ CurrentWord }), -- used for highlighting "read" references
    LspReferenceWrite({ CurrentWord }), -- used for highlighting "write" references

    LspDiagnosticsDefaultError({ ErrorText }), -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultWarning({ WarningText }), -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultInformation({ InfoText }), -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultHint({ HintText }), -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    LspDiagnosticsVirtualTextError({ VirtualTextError }), -- Used for "Error" diagnostic virtual text
    LspDiagnosticsVirtualTextWarning({ VirtualTextWarning }), -- Used for "Warning" diagnostic virtual text
    LspDiagnosticsVirtualTextInformation({ VirtualTextInfo }), -- Used for "Information" diagnostic virtual text
    LspDiagnosticsVirtualTextHint({ VirtualTextHint }), -- Used for "Hint" diagnostic virtual text

    LspDiagnosticsUnderlineError({ ErrorText }), -- Used to underline "Error" diagnostics
    LspDiagnosticsUnderlineWarning({ WarningText }), -- Used to underline "Warning" diagnostics
    LspDiagnosticsUnderlineInformation({ InfoText }), -- Used to underline "Information" diagnostics
    LspDiagnosticsUnderlineHint({ HintText }), -- Used to underline "Hint" diagnostics

    LspDiagnosticsFloatingError({ ErrorFloat }), -- Used to color "Error" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingWarning({ WarningFloat }), -- Used to color "Warning" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingInformation({ InfoFloat }), -- Used to color "Information" diagnostic messages in diagnostics float
    LspDiagnosticsFloatingHint({ HintFloat }), -- Used to color "Hint" diagnostic messages in diagnostics float

    LspDiagnosticsSignError({ RedSign }), -- Used for "Error" signs in sign column
    LspDiagnosticsSignWarning({ YellowSign }), -- Used for "Warning" signs in sign column
    LspDiagnosticsSignInformation({ BlueSign }), -- Used for "Information" signs in sign column
    LspDiagnosticsSignHint({ GreenSign }), -- Used for "Hint" signs in sign column

    -- LspCodeLens                          { }, -- Used to color the virtual text of the codelens

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
    TSString({ Green }), -- For strings.
    TSStringRegex({ Yellow }), -- For regexes.
    TSStringEscape({ Yellow }), -- For escape characters within a string.
    TSSymbol({ Red }), -- For identifiers referring to symbols or atoms.
    TSType({ Yellow }), -- For types.
    TSTypeBuiltin({ Yellow }), -- For builtin types.
    TSVariable({ Fg }), -- Any variable name that does not have another highlight.
    TSVariableBuiltin({ CyanItalic }), -- Variable names that are defined by the languages, like `this` or `self`.

    TSTag({ RedItalic }), -- Tags like html tag names.
    TSTagDelimiter({ Purple }), -- Tag delimiter like `<` `>` `/`
    TSText({ Green }), -- For strings considered text in a markup language.
    TSEmphasis({ gui = "bold" }), -- For text to be represented with emphasis.
    TSUnderline({ gui = "underline" }), -- For text to be represented with an underline.
    TSStrike({ Grey }), -- For strikethrough text.
    TSTitle({ Title }), -- Text that is part of a title.
    TSLiteral({ String }), -- Literal text.
    TSURI({ gui = "underline", fg = palette.green }), -- Any URI like a link or email.

    -- Plugins

    -- thiagoalessio/rainbow_levels.vim
    RainbowLevel0({ Red }),
    RainbowLevel1({ Yellow }),
    RainbowLevel2({ Green }),
    RainbowLevel3({ Cyan }),
    RainbowLevel4({ Blue }),
    RainbowLevel5({ Purple }),
    RainbowLevel6({ Green }),
    RainbowLevel7({ Cyan }),
    RainbowLevel8({ Blue }),

    -- p00f/nvim-ts-rainbow
    rainbowcol1({ Red }),
    rainbowcol2({ Yellow }),
    rainbowcol3({ Green }),
    rainbowcol4({ Cyan }),
    rainbowcol5({ Blue }),
    rainbowcol6({ Purple }),
    rainbowcol7({ Green }),

    -- hrsh7th/nvim-cmp
    CmpItemAbbr({ Fg }),
    CmpItemAbbrDeprecated({ Fg }),
    CmpItemAbbrMatch({ gui = "bold", fg = palette.blue }),
    CmpItemAbbrMatchFuzzy({ gui = "bold", fg = palette.blue }),
    CmpItemKind({ Purple }),
    CmpItemMenu({ Fg }),

    -- phaazon/hop.nvim
    HopNextKey({ gui = "bold", fg = palette.purple }),
    HopNextKey1({ gui = "bold", fg = palette.blue }),
    HopNextKey2({ Blue }),
    HopUnmatched({ Grey }),

    -- lukas-reineke/indent-blankline.nvim
    IndentBlanklineChar({ Conceal }),
    IndentBlanklineContextChar({ Grey }),
    IndentBlanklineSpaceChar({ Conceal }),
    IndentBlanklineSpaceCharBlankline({ Conceal }),

    -- lewis6991/gitsigns.nvim
    GitSignsAdd({ GreenSign }),
    GitSignsChange({ BlueSign }),
    GitSignsChangeDelete({ PurpleSign }),
    GitSignsDelete({ RedSign }),

    -- andymass/vim-matchup
    MatchParenCur({ gui = "bold" }),
    MatchWord({ gui = "underline" }),
    MatchWordCur({ gui = "underline" }),

    -- rcarriga/nvim-notify
    NotifyDEBUGBorder({ Grey }),
    NotifyDEBUGIcon({ Grey }),
    NotifyDEBUGTitle({ Grey }),
    NotifyERRORBorder({ Red }),
    NotifyERRORIcon({ Red }),
    NotifyERRORTitle({ Red }),
    NotifyINFOBorder({ Green }),
    NotifyINFOIcon({ Green }),
    NotifyINFOTitle({ Green }),
    NotifyTRACEBorder({ Purple }),
    NotifyTRACEIcon({ Purple }),
    NotifyTRACETitle({ Purple }),
    NotifyWARNBorder({ Yellow }),
    NotifyWARNIcon({ Yellow }),
    NotifyWARNTitle({ Yellow }),

    -- nvim-telescope/telescope.nvim
    TelescopeMatching({ gui = "bold", fg = palette.green }),
    TelescopeBorder({ Grey }),
    TelescopePromptPrefix({ Purple }),
    TelescopeSelection({ DiffAdd }),

    -- folke/trouble.nvim
    TroubleText({ Fg }),
    TroubleSource({ Grey }),
    TroubleCode({ Grey }),

    -- kyazdani42/nvim-tree.lua
    NvimTreeEmptyFolderName({ Green }),
    NvimTreeExecFile({ Fg }),
    NvimTreeFolderIcon({ Blue }),
    NvimTreeFolderName({ Green }),
    NvimTreeGitDeleted({ Red }),
    NvimTreeGitDirty({ Yellow }),
    NvimTreeGitMerge({ Cyan }),
    NvimTreeGitNew({ Green }),
    NvimTreeGitRenamed({ Purple }),
    NvimTreeGitStaged({ Blue }),
    NvimTreeImageFile({ Fg }),
    NvimTreeIndentMarker({ Grey }),
    NvimTreeLspDiagnosticsError({ RedSign }),
    NvimTreeLspDiagnosticsHint({ GreenSign }),
    NvimTreeLspDiagnosticsInformation({ BlueSign }),
    NvimTreeLspDiagnosticsWarning({ YellowSign }),
    NvimTreeMarkdownFile({ Fg }),
    NvimTreeOpenedFile({ Fg }),
    NvimTreeOpenedFolderName({ Green, gui = "bold" }),
    NvimTreeRootFolder({ Grey }),
    NvimTreeSpecialFile({ Fg }),
    NvimTreeSymlink({ Fg }),

    -- mbbill/undotree
    UndotreeSavedBig({ gui = "bold", fg = palette.red }),
    UndotreeNode({ Blue }),
    UndotreeNodeCurrent({ Purple }),
    UndotreeSeq({ Green }),
    UndotreeCurrent({ Cyan }),
    UndotreeNext({ Yellow }),
    UndotreeTimeStamp({ Grey }),
    UndotreeHead({ Purple }),
    UndotreeBranch({ Cyan }),
    UndotreeSavedSmall({ Red }),

    -- ft: diff
    diffAdded({ Green }),
    diffRemoved({ Red }),
    diffChanged({ Blue }),
    diffOldFile({ Green }),
    diffNewFile({ Cyan }),
    diffFile({ Yellow }),
    diffLine({ Grey }),
    diffIndexLine({ Yellow }),

    -- TimUntersberger/neogit
    NeogitNotificationInfo({ Blue }),
    NeogitNotificationWarning({ Yellow }),
    NeogitNotificationError({ Red }),
    NeogitDiffAdd({ Green }),
    NeogitDiffDelete({ Red }),
    NeogitDiffContextHighlight({ CursorLine }),
    NeogitHunkHeaderHighlight({ TabLine }),
    NeogitHunkHeader({ TabLineFill }),
    NeogitCommandCodeNormal({ Green }),
    NeogitCommandCodeError({ Red }),
    NeogitCommitViewHeader({ diffIndexLine }),
    NeogitFilePath({ diffFile }),

    -- liuchengxu/vim-which-key
    WhichKey({ Red }),
    WhichKeySeperator({ Green }),
    WhichKeyGroup({ Purple }),
    WhichKeyDesc({ Blue }),

    -- liuchengxu/vista.vim
    VistaBracket({ Grey }),
    VistaChildrenNr({ Yellow }),
    VistaScope({ Red }),
    VistaTag({ Green }),
    VistaPrefix({ Grey }),
    VistaColon({ Green }),
    VistaIcon({ Purple }),
    VistaLineNr({ Fg }),
    VistaScopeKind({ Green }),
    VistaHeadNr({ Fg }),
    VistaPublic({ Blue }),
    VistaProtected({ Green }),
    VistaPrivate({ Purple }),

    -- gabrielelana/vim-markdown
    mkdURL({ TSURI }),
    mkdInlineURL({ TSURI }),
    mkdItalic({ gui = "italic", fg = palette.grey }),
    mkdCodeDelimiter({ Green }),
    mkdCode({ Green }),
    mkdBold({ Grey }),
    mkdLink({ Purple }),
    mkdHeading({ Grey }),
    mkdListItem({ Red }),
    mkdRule({ Yellow }),
    mkdDelimiter({ Grey }),
    mkdId({ Green }),
  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap