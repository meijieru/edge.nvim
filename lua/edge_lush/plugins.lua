local lush = require("lush")
local base = require("edge_lush.base")

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
    CmpItemAbbrDeprecated({ base.Fg }),
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
    IndentBlanklineChar({ base.Conceal }),
    IndentBlanklineContextChar({ base.Grey }),
    IndentBlanklineSpaceChar({ base.Conceal }),
    IndentBlanklineSpaceCharBlankline({ base.Conceal }),

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
    NvimTreeEmptyFolderName({ base.Green }),
    NvimTreeExecFile({ base.Fg }),
    NvimTreeFolderIcon({ base.Blue }),
    NvimTreeFolderName({ base.Green }),
    NvimTreeGitDeleted({ base.Red }),
    NvimTreeGitDirty({ base.Yellow }),
    NvimTreeGitMerge({ base.Cyan }),
    NvimTreeGitNew({ base.Green }),
    NvimTreeGitRenamed({ base.Purple }),
    NvimTreeGitStaged({ base.Blue }),
    NvimTreeImageFile({ base.Fg }),
    NvimTreeIndentMarker({ base.Grey }),
    NvimTreeLspDiagnosticsError({ base.RedSign }),
    NvimTreeLspDiagnosticsHint({ base.GreenSign }),
    NvimTreeLspDiagnosticsInformation({ base.BlueSign }),
    NvimTreeLspDiagnosticsWarning({ base.YellowSign }),
    NvimTreeMarkdownFile({ base.Fg }),
    NvimTreeOpenedFile({ base.Fg }),
    NvimTreeOpenedFolderName({ base.Green, gui = "bold" }),
    NvimTreeRootFolder({ base.Grey }),
    NvimTreeSpecialFile({ base.Fg }),
    NvimTreeSymlink({ base.Fg }),

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

    -- ft: diff
    diffAdded({ base.Green }),
    diffRemoved({ base.Red }),
    diffChanged({ base.Blue }),
    diffOldFile({ base.Green }),
    diffNewFile({ base.Cyan }),
    diffFile({ base.Yellow }),
    diffLine({ base.Grey }),
    diffIndexLine({ base.Yellow }),

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
    DapUIVariable({ base.Normal }),
    DapUIScope({ base.Blue }),
    DapUIType({ base.Purple }),
    DapUIValue({ base.Normal }),
    DapUIModifiedValue({ base.Red, gui = "bold" }),
    DapUIDecoration({ base.Blue }),
    DapUIThread({ base.Green }),
    DapUIStoppedThread({ base.Blue }),
    DapUIFrameName({ base.Normal }),
    DapUISource({ base.Purple }),
    DapUILineNumber({ base.Blue }),
    DapUIFloatBorder({ base.Blue }),
    DapUIWatchesEmpty({ base.Red }),
    DapUIWatchesValue({ base.Green }),
    DapUIWatchesError({ base.Red }),
    DapUIBreakpointsPath({ base.Blue }),
    DapUIBreakpointsInfo({ base.Green }),
    DapUIBreakpointsCurrentLine({ base.Green, gui = "bold" }),
    DapUIBreakpointsLine({ DapUILineNumber }),

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

    -- stevearc/dressing.nvim
    FloatTitle({ base.Normal }),
  }
end)

return plugins
