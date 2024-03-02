-- Credits to original theme https://github.com/dracula/vim
-- This is a modified version 

local M = {}

M.base_30 = {
  white = "#e5e9f0",
  darker_black = "#2E3440",
  black = "#2E3440", --  nvim bg
  black2 = "#4C566A",
  one_bg = "#4C566A", -- real bg of onedark
  one_bg2 = "#4C566A",
  one_bg3 = "#4C566A",
  grey = "#4C566A",
  grey_fg = "#4C566A",
  grey_fg2 = "#E5E9F0",
  light_grey = "#2E3440",
  red = "#88C0D0",
  baby_pink = "#A3BE8C",
  pink = "#A3BE8C",
  line = "#4C566A", -- for lines like vertsplit
  green = "#BF616A",
  vibrant_green = "#BF616A",
  nord_blue = "#EBCB8B",
  blue = "#ebcb8b",
  yellow = "#5E81AC",
  sun = "#5E81AC",
  purple = "#A3BE8C",
  dark_purple = "#A3BE8C",
  teal = "#ebcb8b",
  orange = "#5E81AC",
  cyan = "#D08770",
  statusline_bg = "#4C566A",
  lightbg = "#4C566A", -- statusbar
  pmenu_bg = "#4C566A", -- statusbar
  folder_bg = "#4C566A", -- statusbar
}

M.base_16 = {
  base00 = "#2E3440",
  base01 = "#4C566A",
  base02 = "#88C0D0",
  base03 = "#88C0D0",
  base04 = "#E5E9F0",
  base05 = "#e5e9f0",
  base06 = "#5E81AC",
  base07 = "#5E81AC",
  base08 = "#88C0D0",
  base09 = "#88C0D0",
  base0A = "#A3BE8C",
  base0B = "#A3BE8C",
  base0C = "#88C0D0",
  base0D = "#88C0D0",
  base0E = "#EBCB8B",
  base0F = "#e5e9f0", -- [] and ,
}

M.polish_hl = {
  ["@function.builtin"] = { fg = M.base_30.cyan },
  ["@number"] = { fg = M.base_30.purple },
}

M.type = "dark"

M = require("base46").override_theme(M, "pywal")

return M
