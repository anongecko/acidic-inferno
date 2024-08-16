local M = {}

-- Neon Inferno Color Palette
M.base_30 = {
    white = "#ff3300",              -- Intense, neon red for primary text
    darker_black = "#010101",        -- Even closer to black background
    black = "#030303", 
    black2 = "#050505",
    one_bg = "#080808",
    one_bg2 = "#0a0a0a",
    one_bg3 = "#0d0d0d",
    grey = "#141414",
    grey_fg = "#181818",
    grey_fg2 = "#1c1c1c",
    light_grey = "#202020",
    red = "#ff0000",                 -- Bright, neon red for accents
    baby_pink = "#ff66ff",
    pink = "#ff00ff",                 -- Vivid pink for highlights
    line = "#010101",                -- Near-black for separators
    green = "#37FD12",                -- Your provided neon green
    vibrant_green = "#50ff2a",       -- Even more vibrant neon green
    yellow = "#ffff00",               -- Pure neon yellow
    sun = "#ffff66",
    purple = "#cc00ff",
    dark_purple = "#9900cc",
    teal = "#00ffff",                 -- Neon cyan
    orange = "#ff9900",               -- Neon orange
    statusline_bg = "#050505",
    lightbg = "#080808",
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

-- Highlight Group Overrides (Including Integrations)
M.base46 = {
    hl_override = {
        Normal = { bg = M.base_30.black }, 
        Comment = { fg = M.base_30.acidic_green, italic = true },
        Constant = { fg = M.base_30.inferno_orange },
        String = { fg = M.base_30.light_orange },
        Identifier = { fg = M.base_30.inferno_yellow },
        Keyword = { fg = M.base_30.inferno_red },
        Operator = { fg = M.base_30.inferno_red },
        Function = { fg = M.base_30.light_red },
        Statement = { fg = M.base_30.inferno_red },
        Type = { fg = M.base_30.inferno_light_orange },
        Namespace = { fg = M.base_30.inferno_light_orange },

        -- Add more overrides if needed

        VertSplit = { fg = M.base_30.inferno_red }, -- Red separator

        -- Terminal Colors 
        Terminal = { bg = M.base_30.black, fg = M.base_30.inferno_light_orange }, 

        -- NvimTree 
        NvimTreeNormal = { bg = M.base_30.black2 }, 
        NvimTreeVertSplit = { fg = M.base_30.inferno_red },
        NvimTreeFolderIcon = { fg = M.base_30.inferno_orange },

        -- StatusLine
        StatusLine = { bg = M.base_30.black2, fg = M.base_30.inferno_light_orange },
        StatusLineNC = { bg = M.base_30.black2, fg = M.base_30.grey_fg },

        -- Terminal Divider (Acidic Green)
        TermCursor = { fg = M.base_30.acidic_green, bg = M.base_30.acidic_green},

        -- Additional NvimTree Overrides
        NvimTreeGitNew = { fg = M.base_30.green },
        NvimTreeGitDeleted = { fg = M.base_30.inferno_red },
        NvimTreeLspDiagnosticsError = { fg = M.base_30.inferno_red },
        NvimTreeLspDiagnosticsWarning = { fg = M.base_30.inferno_orange },
        NvimTreeLspDiagnosticsInformation = { fg = M.base_30.yellow }, 
        NvimTreeLspDiagnosticsHint = { fg = M.base_30.acidic_green },

        -- Telescope 
        TelescopePromptPrefix = { fg = M.base_30.inferno_red },
        TelescopePromptTitle = { fg = M.base_30.inferno_light_orange, bold = true },

        -- StatusLine & WinBar
        StatusLineGitBranch = { fg = M.base_30.inferno_light_orange },
        WinBar = { bg = M.base_30.black2, fg = M.base_30.inferno_light_orange },
        WinBarNC = { bg = M.base_30.black2, fg = M.base_30.grey_fg },

        -- LSP 
        LspReferenceText = { bg = M.base_30.one_bg2 },
        LspReferenceRead = { bg = M.base_30.one_bg2 },
        LspReferenceWrite = { bg = M.base_30.one_bg2 },

        -- WhichKey
        WhichKey = { fg = M.base_30.inferno_light_orange },
        WhichKeyGroup = { fg = M.base_30.yellow },
        WhichKeySeparator = { fg = M.base_30.grey_fg },
        WhichKeyDesc = { fg = M.base_30.light_red },
        WhichKeyFloat = { bg = M.base_30.one_bg },

        -- Indent Blankline
        IblScope = { bg = M.base_30.one_bg, fg = M.base_30.grey },

        -- CMP 
        CmpItemAbbrDeprecated = { fg = M.base_30.grey_fg, strikethrough = true },
        CmpItemAbbrMatch = { fg = M.base_30.inferno_light_orange, bold = true },
        CmpItemAbbrMatchFuzzy = { fg = M.base_30.inferno_light_orange },
        CmpItemKindClass = { fg = M.base_30.yellow },
        CmpItemKindFunction = { fg = M.base_30.light_red },
        CmpItemKindInterface = { fg = M.base_30.inferno_light_orange },
        CmpItemKindKeyword = { fg = M.base_30.inferno_red },
        CmpItemKindMethod = { fg = M.base_30.light_red },
        CmpItemKindSnippet = { fg = M.base_30.green },
        CmpItemKindVariable = { fg = M.base_30.inferno_yellow },
    },
}

M.type = "dark" 

M = require("base46").override_theme(M, "acidic-inferno")

return M
