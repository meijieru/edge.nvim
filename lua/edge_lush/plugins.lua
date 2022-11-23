local lush = require("lush")
local base = require("edge_lush.base")
local palette = require("edge_lush.palette")

---@diagnostic disable: undefined-global
local plugins = lush(function()
  return {
    -- thiagoalessio/rainbow_levels.vim
    RainbowLevel0({ base.Red }),
    RainbowLevel1({ base.Yellow }),
    RainbowLevel2({ base.Green }),
    RainbowLevel3({ base.Cyan }),
    RainbowLevel4({ base.Blue }),
    RainbowLevel5({ base.Purple }),
    RainbowLevel6({ base.Green }),
    RainbowLevel7({ base.Cyan }),
    RainbowLevel8({ base.Blue }),

    -- p00f/nvim-ts-rainbow
    rainbowcol1({ base.Red }),
    rainbowcol2({ base.Yellow }),
    rainbowcol3({ base.Green }),
    rainbowcol4({ base.Cyan }),
    rainbowcol5({ base.Blue }),
    rainbowcol6({ base.Purple }),
    rainbowcol7({ base.Green }),

    -- hrsh7th/nvim-cmp
    CmpItemAbbrMatch({ base.Blue, gui = "bold" }),
    CmpItemAbbrMatchFuzzy({ base.Blue, gui = "bold" }),
    CmpItemAbbr({ base.Fg }),
    CmpItemAbbrDeprecated({ base.Grey }),
    CmpItemMenu({ base.Fg }),
    CmpItemKind({ base.Purple }),
    CmpItemKindText({ base.Fg }),
    CmpItemKindMethod({ base.Blue }),
    CmpItemKindFunction({ base.Blue }),
    CmpItemKindConstructor({ base.Blue }),
    CmpItemKindField({ base.Blue }),
    CmpItemKindVariable({ base.Red }),
    CmpItemKindClass({ base.Yellow }),
    CmpItemKindInterface({ base.Yellow }),
    CmpItemKindModule({ base.Yellow }),
    CmpItemKindProperty({ base.Red }),
    CmpItemKindUnit({ base.Green }),
    CmpItemKindValue({ base.Green }),
    CmpItemKindEnum({ base.Yellow }),
    CmpItemKindKeyword({ base.Purple }),
    CmpItemKindSnippet({ base.Cyan }),
    CmpItemKindColor({ base.Cyan }),
    CmpItemKindFile({ base.Cyan }),
    CmpItemKindReference({ base.Cyan }),
    CmpItemKindFolder({ base.Cyan }),
    CmpItemKindEnumMember({ base.Green }),
    CmpItemKindConstant({ base.Red }),
    CmpItemKindStruct({ base.Yellow }),
    CmpItemKindEvent({ base.Purple }),
    CmpItemKindOperator({ base.Purple }),
    CmpItemKindTypeParameter({ base.Yellow }),

    -- phaazon/hop.nvim
    HopNextKey({ base.Purple, gui = "bold" }),
    HopNextKey1({ base.Blue, gui = "bold" }),
    HopNextKey2({ base.Blue }),
    HopUnmatched({ base.Grey }),

    -- lukas-reineke/indent-blankline.nvim
    IndentBlanklineContextChar({ fg = palette.grey, gui = "nocombine" }),
    IndentBlanklineChar({ fg = palette.grey_dim, gui = "nocombine" }),
    IndentBlanklineSpaceChar({ IndentBlanklineChar }),
    IndentBlanklineSpaceCharBlankline({ IndentBlanklineChar }),

    -- lewis6991/gitsigns.nvim
    GitSignsAdd({ base.GreenSign }),
    GitSignsChange({ base.BlueSign }),
    GitSignsDelete({ base.RedSign }),
    GitSignsAddNr({ base.Green }),
    GitSignsChangeNr({ base.Blue }),
    GitSignsDeleteNr({ base.Red }),
    GitSignsAddLn({ base.DiffAdd }),
    GitSignsChangeLn({ base.DiffChange }),
    GitSignsDeleteLn({ base.DiffDelete }),
    GitSignsCurrentLineBlame({ base.Grey }),

    -- andymass/vim-matchup
    MatchParenCur({ gui = "bold" }),
    MatchWord({ gui = "underline" }),
    MatchWordCur({ gui = "underline" }),

    -- rcarriga/nvim-notify
    NotifyDEBUGBorder({ base.Grey }),
    NotifyDEBUGIcon({ base.Grey }),
    NotifyDEBUGTitle({ base.Grey }),
    NotifyERRORBorder({ base.Red }),
    NotifyERRORIcon({ base.Red }),
    NotifyERRORTitle({ base.Red }),
    NotifyINFOBorder({ base.Green }),
    NotifyINFOIcon({ base.Green }),
    NotifyINFOTitle({ base.Green }),
    NotifyTRACEBorder({ base.Purple }),
    NotifyTRACEIcon({ base.Purple }),
    NotifyTRACETitle({ base.Purple }),
    NotifyWARNBorder({ base.Yellow }),
    NotifyWARNIcon({ base.Yellow }),
    NotifyWARNTitle({ base.Yellow }),

    -- nvim-telescope/telescope.nvim
    TelescopeMatching({ base.Green, gui = "bold" }),
    TelescopeBorder({ base.Grey }),
    TelescopePromptPrefix({ base.Purple }),
    TelescopeSelection({ base.DiffAdd }),

    -- folke/trouble.nvim
    TroubleText({ base.Fg }),
    TroubleSource({ base.Grey }),
    TroubleCode({ base.Grey }),

    -- kyazdani42/nvim-tree.lua
    NvimTreeNormal({ bg = palette.bg_dim, fg = palette.fg }),
    NvimTreeEndOfBuffer({ bg = palette.bg_dim, fg = palette.bg_dim }),
    NvimTreeVertSplit({ bg = palette.bg0, fg = palette.bg0 }),
    NvimTreeCursorLine({ bg = palette.bg0 }),
    NvimTreeSymlink({ base.Fg }),
    NvimTreeFolderName({ base.Green }),
    NvimTreeRootFolder({ base.Grey }),
    NvimTreeFolderIcon({ base.Blue }),
    NvimTreeEmptyFolderName({ base.Green }),
    NvimTreeOpenedFolderName({ base.Green }),
    NvimTreeExecFile({ base.Fg }),
    NvimTreeOpenedFile({ base.Fg }),
    NvimTreeSpecialFile({ base.Fg }),
    NvimTreeImageFile({ base.Fg }),
    NvimTreeMarkdownFile({ base.Fg }),
    NvimTreeIndentMarker({ base.Grey }),
    NvimTreeGitDirty({ base.Yellow }),
    NvimTreeGitStaged({ base.Blue }),
    NvimTreeGitMerge({ base.Cyan }),
    NvimTreeGitRenamed({ base.Purple }),
    NvimTreeGitNew({ base.Green }),
    NvimTreeGitDeleted({ base.Red }),
    NvimTreeLspDiagnosticsError({ base.RedSign }),
    NvimTreeLspDiagnosticsWarning({ base.YellowSign }),
    NvimTreeLspDiagnosticsInformation({ base.BlueSign }),
    NvimTreeLspDiagnosticsHint({ base.GreenSign }),

    -- mbbill/undotree
    UndotreeSavedBig({ base.Red, gui = "bold" }),
    UndotreeNode({ base.Blue }),
    UndotreeNodeCurrent({ base.Purple }),
    UndotreeSeq({ base.Green }),
    UndotreeCurrent({ base.Cyan }),
    UndotreeNext({ base.Yellow }),
    UndotreeTimeStamp({ base.Grey }),
    UndotreeHead({ base.Purple }),
    UndotreeBranch({ base.Cyan }),
    UndotreeSavedSmall({ base.Red }),

    -- TimUntersberger/neogit
    NeogitNotificationInfo({ base.Blue }),
    NeogitNotificationWarning({ base.Yellow }),
    NeogitNotificationError({ base.Red }),
    NeogitDiffAdd({ base.Green }),
    NeogitDiffDelete({ base.Red }),
    NeogitDiffContextHighlight({ base.CursorLine }),
    NeogitHunkHeaderHighlight({ base.TabLine }),
    NeogitHunkHeader({ base.TabLineFill }),
    NeogitCommandCodeNormal({ base.Green }),
    NeogitCommandCodeError({ base.Red }),
    NeogitCommitViewHeader({ base.diffIndexLine }),
    NeogitFilePath({ base.diffFile }),

    -- liuchengxu/vim-which-key
    WhichKey({ base.Red }),
    WhichKeySeperator({ base.Green }),
    WhichKeyGroup({ base.Purple }),
    WhichKeyDesc({ base.Blue }),

    -- liuchengxu/vista.vim
    VistaBracket({ base.Grey }),
    VistaChildrenNr({ base.Yellow }),
    VistaScope({ base.Red }),
    VistaTag({ base.Green }),
    VistaPrefix({ base.Grey }),
    VistaColon({ base.Green }),
    VistaIcon({ base.Purple }),
    VistaLineNr({ base.Fg }),
    VistaScopeKind({ base.Green }),
    VistaHeadNr({ base.Fg }),
    VistaPublic({ base.Blue }),
    VistaProtected({ base.Green }),
    VistaPrivate({ base.Purple }),

    -- gabrielelana/vim-markdown
    mkdURL({ base.TSURI }),
    mkdInlineURL({ base.TSURI }),
    mkdItalic({ base.Grey, gui = "italic" }),
    mkdCodeDelimiter({ base.Green }),
    mkdCode({ base.Green }),
    mkdBold({ base.Grey }),
    mkdLink({ base.Purple }),
    mkdHeading({ base.Grey }),
    mkdListItem({ base.Red }),
    mkdRule({ base.Yellow }),
    mkdDelimiter({ base.Grey }),
    mkdId({ base.Green }),

    -- ray-x/lsp_signature.nvim
    LspSignatureActiveParameter({ base.TSStrong }),

    -- rcarriga/nvim-dap-ui
    DapUIModifiedValue({ base.Cyan, gui = "bold" }),
    DapUIBreakpointsCurrentLine({ base.Green, gui = "bold" }),
    DapUIScope({ base.Cyan }),
    DapUIType({ base.Purple }),
    DapUIDecoration({ base.Cyan }),
    DapUIThread({ base.Green }),
    DapUIStoppedThread({ base.Cyan }),
    DapUISource({ base.Purple }),
    DapUILineNumber({ base.Cyan }),
    DapUIFloatBorder({ base.Cyan }),
    DapUIWatchesEmpty({ base.Red }),
    DapUIWatchesValue({ base.Green }),
    DapUIWatchesError({ base.Red }),
    DapUIBreakpointsPath({ base.Cyan }),
    DapUIBreakpointsInfo({ base.Green }),

    -- theHamsta/nvim-dap-virtual-text
    NvimDapVirtualTextChanged({ DapUIModifiedValue }),
    -- NvimDapVirtualText({ DapUIVariable }),

    -- simrat39/symbols-outline.nvim
    FocusedSymbol({ base.Green, gui = "bold" }),

    -- stevearc/aerial.nvim
    AerialClassIcon({ base.TSType }),
    AerialConstructorIcon({ base.TSConstructor }),
    AerialFunctionIcon({ base.TSFunction }),
    AerialEnumIcon({ base.TSConstant }),
    AerialInterfaceIcon({ base.TSInterface }),
    AerialMethodIcon({ base.TSMethod }),
    AerialStructIcon({ base.TSType }),

    -- MTDL9/vim-log-highlighting
    logBrackets({ base.TSPunctBracket }),

    -- glepnir/dashboard-nvim
    DashboardHeader({ base.Purple }),
    DashboardCenter({ base.Green }),
    DashboardShortcut({ base.Blue }),
    DashboardFooter({ base.Red }),

    -- wbthomason/packer.nvim
    packerSuccess({ base.Green }),
    packerFail({ base.Red }),
    packerStatusSuccess({ base.Fg }),
    packerStatusFail({ base.Fg }),
    packerWorking({ base.Blue }),
    packerString({ base.Yellow }),
    packerPackageNotLoaded({ base.Grey }),
    packerRelDate({ base.Grey }),
    packerPackageName({ base.Green }),
    packerOutput({ base.Purple }),
    packerHash({ base.Blue }),
    packerTimeTrivial({ base.Blue }),
    packerTimeHigh({ base.Red }),
    packerTimeMedium({ base.Yellow }),
    packerTimeLow({ base.Green }),

    -- mg979/vim-visual-multi
    VMCursor({ bg = palette.grey_dim, fg = palette.blue }),

    -- RRethy/vim-illuminate
    illuminatedWord({ base.CurrentWord }),
    IlluminatedWordText({ base.CurrentWord }),
    IlluminatedWordRead({ base.CurrentWord }),
    IlluminatedWordWrite({ base.CurrentWord }),
  }
end)

-- mg979/vim-visual-multi
vim.g.VM_Mono_hl = "VMCursor"
vim.g.VM_Extend_hl = "Visual"
vim.g.VM_Cursor_hl = "VMCursor"
vim.g.VM_Insert_hl = "VMCursor"

return plugins
