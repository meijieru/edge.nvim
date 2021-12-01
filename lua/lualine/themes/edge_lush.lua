-- Modified from https://github.com/sainnhe/edge/blob/master/lua/lualine/themes/edge.lua

local palette = require("edge_lush.palette")
palette = vim.tbl_map(function(hsl)
  return tostring(hsl):lower()
end, palette)

return {
  normal = {
    a = { bg = palette.bg_purple, fg = palette.bg0, gui = "bold" },
    b = { bg = palette.bg4, fg = palette.fg },
    c = { bg = palette.bg1, fg = palette.fg },
  },
  insert = {
    a = { bg = palette.bg_blue, fg = palette.bg0, gui = "bold" },
    b = { bg = palette.bg4, fg = palette.fg },
    c = { bg = palette.bg1, fg = palette.fg },
  },
  visual = {
    a = { bg = palette.bg_red, fg = palette.bg0, gui = "bold" },
    b = { bg = palette.bg4, fg = palette.fg },
    c = { bg = palette.bg1, fg = palette.fg },
  },
  replace = {
    a = { bg = palette.yellow, fg = palette.bg0, gui = "bold" },
    b = { bg = palette.bg4, fg = palette.fg },
    c = { bg = palette.bg1, fg = palette.fg },
  },
  command = {
    a = { bg = palette.bg_green, fg = palette.bg0, gui = "bold" },
    b = { bg = palette.bg4, fg = palette.fg },
    c = { bg = palette.bg1, fg = palette.fg },
  },
  terminal = {
    a = { bg = palette.cyan, fg = palette.bg0, gui = "bold" },
    b = { bg = palette.bg4, fg = palette.fg },
    c = { bg = palette.bg1, fg = palette.fg },
  },
  inactive = {
    a = { bg = palette.bg1, fg = palette.grey },
    b = { bg = palette.bg1, fg = palette.grey },
    c = { bg = palette.bg1, fg = palette.grey },
  },
}
