-- -- This file needs to have same structure as nvconfig.lua
-- -- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- -- Please read that file to know all available options :(
--
-- ---@type ChadrcConfig
-- local M = {}
--
-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
--   virtual_text = false,
-- })
--
-- M.base46 = {
--   theme = "flexoki",
--
--   hl_override = {
--     Comment = { italic = true },
--     ["@comment"] = { italic = true },
--   },
-- }
--
-- M.nvdash = {
--   load_on_startup = true,
--   header = {
--     "           ▄ ▄                   ",
--     "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
--     "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
--     "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
--     "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
--     "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
--     "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
--     "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
--     "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
--     "",
--     "",
--   },
-- }
-- M.ui = {
--   tabufline = {
--     enabled = false,
--   },
--   statusline = {
--     theme = "minimal",
--     separator_style = "round",
--   },
--   cmp = {
--     style = "atom"
--   }
-- }
--
-- return M
--

---@type ChadrcConfig
local M = {}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false,
})

M.ui = {
  theme = "onedark", 
  transparency = false, 
  
  statusline = {
    theme = "vscode_colored", 
    separator_style = "block", 
    order = { "mode", "file", "git", "diagnostics", "lsp_msg", "%=", "cwd", "cursor" },
  },
}

-- M.nvdash = {
--   load_on_startup = true,
--   header = {
--     "           ▄ ▄                   ",
--     "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
--     "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
--     "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
--     "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
--     "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
--     "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
--     "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
--     "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
--     "",
--     "",
--   },
-- }
--
-- M.nvdash = {
--   load_on_startup = true,
--   header = {
--     "      ___             ___      ",
--     "    /    /\\       /\\    \\    ",
--     "   /    /  \\     /  \\    \\   ",
--     "  /    / /\\ \\  / /\\\\    \\  ",
--     "  \\    \\/  \\ \\/ /  \\/   //  ",
--     "   \\    \\   \\ V /    /    /   ",
--     "    \\    \\  /   \\   /    /    ",
--     "     \\___\\/       \\/___ /     ",
--     "               Sz                   ",
--   },
-- }
--

-- M.nvdash = {
--   load_on_startup = true,
--   header = {
--     "",
--     "⠀⠀⠀⠀⠀⠀⠀⠀⢠⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
--     "⠀⠀⠀⠀⠀⠀⠀⠀⠘⡇⠀⠀⠀⢹⠀⠀⠀⢰⠏⠀⠀⠀⠀⠀⡀⠀⠀⠀",
--     "⠀⠀⠀⠀⢳⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠘⠀⠀⠀⠀⢠⠞⠁⠀⠀⠀",
--     "⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
--     "⠀⠀⢀⡠⠐⣒⣲⣆⣖⠢⢤⡀⠀⠀⠀⠀⠀⠀⣀⡤⢖⣒⣢⠤⡀⠀⠀⠀",
--     "⠀⣠⢋⠔⠁⠀⠱⠄⠀⠉⠛⢬⠷⣄⠀⣠⠔⡽⠚⠉⠀⢀⡀⠈⡙⢢⡀⠀",
--     "⢠⢅⠂⢀⠔⠉⠀⠀⠉⠐⠠⣀⣝⡿⢟⠔⠉⢀⠤⠒⠉⠀⠀⠈⠲⠀⢱⠀",
--     "⢸⠌⠆⠈⠀⠀⠀⠀⠀⠀⠀⣨⣿⠗⠁⢀⣶⣅⡀⠀⠀⠀⠀⠀⠀⡇⠀⡇",
--     "⠈⣶⠀⠘⣤⢀⣀⣀⢠⣴⡿⠞⠁⢀⠴⢽⡎⠓⢌⠓⠤⢄⣀⠠⡚⠀⢠⠁",
--     "⠀⠈⠧⡀⠈⠁⠛⠛⠈⠁⢀⡠⠔⠁⠀⠀⠑⠢⣀⠈⠁⠒⠓⠈⠀⡠⠃⠀",
--     "⠀⠀⠀⠀⠉⠐⠒⠒⠒⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠒⠒⠂⠁⠀⠀⠀",
--     "⠀⠀⠀⠀⠀⣀⠔⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢄⠀⠀⠀⠀⠀",
--     "⠀⠀⠀⣠⠞⠁⠀⠀⠀⡀⠀⠀⠀⢀⠀⠀⠀⠐⡀⠀⠀⠀⠀⠳⣄⠀⠀⠀",
--     "⠀⠀⠀⠀⠀⠀⠀⠀⠜⠀⠀⠀ ⠘⡄⠀⠀⠀⠘⣆⠀⠀⠀⠀⠀⠀⠀⠀",
--     "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
--   },
-- }

-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣶⡋⠁⠀⠀⠀⠀⢀⣀⣀⡀
-- ⠀⠀⠀⠀⠀⠠⠒⣶⣶⣿⣿⣷⣾⣿⣿⣿⣿⣛⣋⣉⠀⠀
-- ⠀⠀⠀⠀⢀⣤⣞⣫⣿⣿⣿⡻⢿⣿⣿⣿⣿⣿⣦⡀⠀⠀
-- ⠀⠀⣶⣾⡿⠿⠿⠿⠿⠋⠈⠀⣸⣿⣿⣿⣿⣷⡈⠙⢆⠀
-- ⠀⠀⠉⠁⠀⠤⣤⣤⣤⣤⣶⣾⣿⣿⣿⣿⠿⣿⣷⠀⠀⠀
-- ⠀⠀⣠⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠁⠀⢹⣿⠀⠀⠀
-- ⢠⣾⣿⣿⣿⣿⠟⠋⠉⠛⠋⠉⠁⣀⠀⠀⠀⠸⠃⠀⠀⠀
-- ⣿⣿⣿⣿⠹⣇⠀⠀⠀⠀⢀⡀⠀⢀⡙⢷⣦⣄⡀⠀⠀⠀
-- ⣿⢿⣿⣿⣷⣦⠤⠤⠀⠀⣠⣿⣶⣶⣿⣿⣿⣿⣿⣷⣄⠀
-- ⠈⠈⣿⡿⢿⣿⣿⣷⣿⣿⡿⢿⣿⣿⣁⡀⠀⠀⠉⢻⣿⣧
-- ⠀⢀⡟⠀⠀⠉⠛⠙⠻⢿⣦⡀⠙⠛⠯⠤⠄⠀⠀⠈⠈⣿
-- ⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⡆⠀⠀⠀⠀⠀⠀⠀⢀⠟
-- ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠀⠂⠂⠒⠀⠒⠐⠂⠂⠀⠀⠀⠀⠀⠀⠀⠀
-- https://emojicombos.com/dragon 

M.nvdash = {
  load_on_startup = true,
  header = {
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣖⣤⣶⣶⣿⠟⠉⠉⠀⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⣠⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣷⣶⣶⣦⣤⣀⠀⠀⠀⠀",
    "⠀⠀⠀⢰⣿⣶⣾⣿⣿⣿⣿⣿⣿⡿⠿⣿⣿⣿⣿⣯⣍⠁⠀⠀⠀",
    "⠀⠀⠀⠹⣿⠻⡅⠀⣠⠉⣹⣿⠿⠛⠃⠀⢹⣿⣿⣿⣿⣷⣄⠀⠀",
    "⠀⠀⠀⢰⣄⣠⣴⠟⠁⢀⣿⠁⠀⠀⠀⣠⣿⣿⣿⣿⣿⣏⠉⠓⠀",
    "⠀⠀⠀⠰⢿⡿⠋⠐⠿⣿⡿⣋⣤⣶⣿⣿⣿⣿⠏⣼⣿⣿⣇⠀⠀",
    "⠀⠀⠀⢀⣠⣴⣶⠞⣠⣶⣿⣿⣿⣿⣿⡿⠋⣡⣾⣿⡿⠈⢿⠀⠀",
    "⠀⠀⢈⣽⣿⠏⣰⣿⣿⣿⣿⣿⠟⠉⠀⠰⠚⠋⢁⣿⠃⠀⠀⢸⠀",
    "⠀⢠⣿⣿⢃⣼⣿⣿⣿⣿⠏⠀⡀⠀⠀⠀⠀⠀⠞⠁⠀⠀⢠⣿⠁",
    "⠠⠟⣾⡏⣼⣿⣿⣿⣿⠃⣠⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⡟⠀",
    "⠀⠀⢹⡇⣿⣿⣿⣿⣿⠀⣿⣿⣷⣄⣀⠀⢀⣀⣠⣴⣿⣿⠟⠀⠀",
    "⠀⠀⠀⠃⢻⣿⣿⣿⣿⣆⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣁⣤⡶⠃",
    "⠀⠀⠀⠀⠀⢯⠘⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠛⠁⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⢿⣿⣿⣿⣿⣿⣷⡶⠶⠂⠀⠀⠀⠀⠀",
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀",
    "",
    "            Szuryuu         ",
    "",
    "",
  },
}

M.base46 = {
  theme = "onedark",
  
  changed_themes = {
    onedark = {
      base_16 = {
        base00 = "#050505", 
        base01 = "#0a0a0a", 
        base02 = "#111111", 
        base03 = "#333333", 
        base04 = "#555555", 
        base05 = "#e0e0e0", 
        base06 = "#f0f0f0", 
        base07 = "#ffffff",
        base08 = "#e0e0e0", 
        base09 = "#86d1e9", 
        base0A = "#86d1e9", 
        base0B = "#666666", 
        base0C = "#86d1e9", 
        base0D = "#86d1e9", 
        base0E = "#86d1e9", 
        base0F = "#86d1e9", 
      },
      base_30 = {
        white         = "#e0e0e0",
        darker_black  = "#020202",
        black         = "#050505", 
        black2        = "#0a0a0a",
        one_bg        = "#0a0a0a",
        one_bg2       = "#111111",
        one_bg3       = "#1a1a1a",
        grey          = "#444444",
        grey_fg       = "#555555",
        grey_fg2      = "#666666",
        light_grey    = "#888888",
        red           = "#86d1e9",
        baby_pink     = "#86d1e9",
        pink          = "#86d1e9",
        line          = "#1a1a1a", 
        green         = "#445544",
        vibrant_green = "#86d1e9",
        blue          = "#86d1e9",
        nord_blue     = "#86d1e9",
        yellow        = "#ccaa00",
        sun           = "#ccaa00",
        purple        = "#86d1e9",
        cyan          = "#86d1e9",
        teal          = "#86d1e9",
        orange        = "#86d1e9",
        cyan_turq     = "#86d1e9",
        statusline_bg = "#0a0a0a",
        lightbg       = "#111111",
        pmenu_bg      = "#86d1e9",
        folder_bg     = "#86d1e9",
      },
    },
  },

  hl_override = {
    -- Background & Borders
    Normal            = { bg = "#050505", fg = "#e0e0e0" },
    NormalNC          = { bg = "#050505", fg = "#666666" }, 
    NvimTreeNormal    = { bg = "#050505" }, 
    NvimTreeNormalNC  = { bg = "#050505" },
    
    -- Borders
    VertSplit     = { fg = "#333333", bg = "#050505" },
    WinSeparator  = { fg = "#333333", bg = "#050505" },
    
    -- Cursor
    Cursor      = { bg = "#86d1e9", fg = "#000000" },
    CursorLine  = { bg = "#0f0f0f" }, 
    
    -- Folders NvimTree
    NvimTreeFolderIcon        = { fg = "#86d1e9" },
    NvimTreeFolderName        = { fg = "#e0e0e0" },
    NvimTreeOpenedFolderName  = { fg = "#86d1e9", bold = true },
    NvimTreeRootFolder = { fg = "#86d1e9", bold = true },
    
    -- Statusline Modules
    St_NormalMode = { bg = "#86d1e9", fg = "#000000", bold = true }, 
    St_InsertMode = { bg = "#e0e0e0", fg = "#000000", bold = true }, 
    St_VisualMode = { bg = "#555555", fg = "#ffffff", bold = true }, 
    
    -- Syntax Overrides
    Comment   = { fg = "#444444", italic = true },
    String    = { fg = "#ccaa00" }, 
    Function  = { fg = "#86d1e9", bold = true }, 
    Keyword   = { fg = "#86d1e9" }, 
    Type      = { fg = "#e0e0e0" }, 
    
    -- Pmenu
    Pmenu     = { bg = "#0a0a0a", fg = "#e0e0e0" },
    PmenuSel  = { bg = "#86d1e9", fg = "#000000" }, 
  },
}

M.plugins = "custom.plugins"

return M
