---@type Base46Table
local M = {}

-- Neon Inferno Color Palette
M.base_30 = {
    white = "#ff3300",              -- Intense, neon red for primary text
    darker_black = "#121212",        -- Darker gray background
    black = "#181818", 
    black2 = "#202020",
    one_bg = "#252525",
    one_bg2 = "#2a2a2a",
    one_bg3 = "#2f2f2f",
    grey = "#353535",
    grey_fg = "#3d3d3d",
    grey_fg2 = "#444444",
    light_grey = "#4c4c4c",
    red = "#ff0000",                 -- Bright, neon red for accents
    baby_pink = "#ff66ff",
    pink = "#ff00ff",                 -- Vivid pink for highlights
    line = "#101010",                -- Darker separator
    green = "#37FD12",                -- Your provided neon green
    vibrant_green = "#50ff2a",       -- Even more vibrant neon green
    yellow = "#ffff00",               -- Pure neon yellow
    sun = "#ffff66",
    purple = "#cc00ff",
    dark_purple = "#9900cc",
    teal = "#00ffff",                 -- Neon cyan
    orange = "#ff9900",               -- Neon orange
    statusline_bg = "#0a0a0a",
    lightbg = "#121212",
    pmenu_bg = "#ff66ff",             -- Neon pink for popup menu
    folder_bg = "#9900cc",            -- Darker neon purple for folders
    inferno_red = "#ff3300",          -- Same as white for consistency
    inferno_orange = "#ff9900",       -- Same as orange for consistency
    inferno_yellow = "#ffff00",        -- Same as yellow for consistency
    inferno_light_orange = "#ffff66",  -- Slightly lighter neon yellow
    acidic_green = "#37FD12",          -- Your provided neon green
    light_red = "#ff0000",            -- Same as red for accents
    light_orange = "#ff9900",          -- Same as orange for consistency
}
-- Base 16 Colors (Adjusted)
M.base_16 = {
    base00 = M.base_30.darker_black,
    base01 = M.base_30.black2,
    base02 = M.base_30.one_bg3,
    base03 = M.base_30.grey,
    base04 = M.base_30.grey_fg,
    base05 = M.base_30.red,
    base06 = M.base_30.inferno_orange,
    base07 = M.base_30.yellow,
    base08 = M.base_30.white,
    base09 = M.base_30.inferno_orange,
    base0A = M.base_30.light_red,
    base0B = M.base_30.light_orange,
    base0C = M.base_30.orange,
    base0D = M.base_30.inferno_light_orange,
    base0E = M.base_30.inferno_red,
    base0F = M.base_30.pink,
}

-- Polish Highlights (Adapted to the new colors)
M.polish_hl = {
    syntax = {
        Include = { fg = M.base_16.base0E, bold = true }, 
    },
    treesitter = {
        ["@property"] = { fg = M.base_16.base0E },       
        ["@tag.delimiter"] = { fg = M.base_30.red },
        ["@punctuation.bracket"] = { fg = M.base_30.yellow },
        ["@punctuation.delimiter"] = { fg = M.base_30.yellow },
    },
}

-- set the theme type whether is dark or light
M.type = "dark" -- "or light"

-- this will be later used for users to override your theme table from chadrc
M = require("base46").override_theme(M,  
 "acidic-inferno")

return M
