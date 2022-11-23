local lush = require("lush")
local hsl = lush.hsl

local background = vim.o.background
if background == nil then
  background = "dark"
  vim.o.background = background
end
vim.o.termguicolors = true

local palette
if background == "dark" then
  palette = {
    black = hsl("#202023"),
    bg_dim = hsl("#24262a"),
    bg0 = hsl("#2c2e34"),
    bg1 = hsl("#33353f"),
    bg2 = hsl("#363944"),
    bg3 = hsl("#3b3e48"),
    bg4 = hsl("#414550"),
    bg_grey = hsl("#828a98"),
    bg_red = hsl("#ec7279"),
    diff_red = hsl("#55393d"),
    bg_green = hsl("#a0c980"),
    diff_green = hsl("#394634"),
    bg_blue = hsl("#6cb6eb"),
    diff_blue = hsl("#354157"),
    bg_purple = hsl("#d38aea"),
    diff_yellow = hsl("#4e432f"),
    fg = hsl("#c5cdd9"),
    red = hsl("#ec7279"),
    yellow = hsl("#deb974"),
    green = hsl("#a0c980"),
    cyan = hsl("#5dbbc1"),
    blue = hsl("#6cb6eb"),
    purple = hsl("#d38aea"),
    grey = hsl("#7f8490"),
    grey_dim = hsl("#5b616e"),
  }
else
  palette = {
    black = hsl("#dde2e7"),
    fg = hsl("#4b505b"),
    bg_dim = hsl("#e8ebf0"),
    bg0 = hsl("#fafafa"),
    bg1 = hsl("#eef1f4"),
    bg2 = hsl("#e8ebf0"),
    bg3 = hsl("#e8ebf0"),
    bg4 = hsl("#dde2e7"),
    bg_grey = hsl("#bcc5cf"),
    bg_red = hsl("#e17373"),
    diff_red = hsl("#f6e4e4"),
    bg_green = hsl("#76af6f"),
    diff_green = hsl("#e5eee4"),
    bg_blue = hsl("#6996e0"),
    diff_blue = hsl("#e3eaf6"),
    bg_purple = hsl("#bf75d6"),
    diff_yellow = hsl("#f0ece2"),
    red = hsl("#d05858"),
    yellow = hsl("#be7e05"),
    green = hsl("#608e32"),
    cyan = hsl("#3a8b84"),
    blue = hsl("#5079be"),
    purple = hsl("#b05ccc"),
    grey = hsl("#8790a0"),
    grey_dim = hsl("#bac3cb"),
  }
end

return palette
