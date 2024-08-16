local M = {}

-- Inferno Color Palette (with darker background)
M.base_30 = {
    white = "#ffffff",
    black = "#030303", -- Darker gray, almost black 
    black2 = "#14171d",
    one_bg = "#1c1f25", 
    one_bg2 = "#24272d",
    one_bg3 = "#2b2e34", 
    grey = "#33363c",
    grey_fg = "#3d4046",
    grey_fg2 = "#46494f",
    light_grey = "#54575d",
    inferno_red = "#e40026",   -- Keywords, Errors
    inferno_orange = "#ff501a", -- Constants, Attributes
    inferno_yellow = "#ff8a00",  -- Variables, Special Identifiers
    inferno_light_orange = "#ffbd59", -- Types, Namespaces
    acidic_green = "#adff2f",     -- Comments
    light_red = "#b22222",      -- Functions 
    light_orange = "#ffa07a",    -- Strings, Inserted Text
}

-- Base 16 Colors (Harmonized)
M.base_16 = {
    base00 = "#0f0f0f",     
    base01 = "#181818",    
    base02 = "#222222",    
    base03 = "#2b2e34",     
    base04 = "#33363c",     
    base05 = "#b22222",     
    base06 = "#e40026",     
    base07 = "#ff501a",    
    base08 = "#ff8a00",     
    base09 = "#ffbd59",     
    base0A = "#ffffff",     
    base0B = "#adff2f",     
    base0C = "#ffa07a",     
    base0D = "#ff4500",    
    base0E = "#14171d",     
    base0F = "#030303",     -- Black for background (matching the new `black`)
}

-- Highlight Group Overrides
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

        IblChar = { fg = M.base_30.light_grey }, 

        -- Terminal Divider (Acidic Green)
        TermCursor = { fg = M.base_30.acidic_green, bg = M.base_30.acidic_green}
    },
}

M.type = "dark" 

return M
