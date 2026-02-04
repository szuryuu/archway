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
  theme = "onedark", -- Base theme (kita akan override total warnanya)
  transparency = false, -- Kita set manual warnanya biar solid/konsisten dengan Kitty
  
  -- Statusline Ronin (Simple & Tajam)
  statusline = {
    theme = "vscode_colored", -- Base style
    separator_style = "block", -- Kotak tajam (Ronin style)
    order = { "mode", "file", "git", "diagnostics", "lsp_msg", "%=", "cwd", "cursor" },
  },
}

M.nvdash = {
  load_on_startup = true,
  header = {
    "           ▄ ▄                   ",
    "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
    "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
    "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
    "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
    "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
    "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
    "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
    "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
    "",
    "",
  },
}

M.base46 = {
  theme = "onedark",
  
  -- INTEGRITY CHECK: RONIN PALETTE
  -- Memaksa NvChad menggunakan warna Void & Blood
  changed_themes = {
    onedark = {
      base_16 = {
        base00 = "#050505", -- Blackest Void (Background Utama)
        base01 = "#0a0a0a", -- Lighter Void (Status bar / Line number)
        base02 = "#111111", -- Selection
        base03 = "#333333", -- Comments / Dim
        base04 = "#555555", -- Dark Text
        base05 = "#e0e0e0", -- Main Text (White)
        base06 = "#f0f0f0", -- Light Text
        base07 = "#ffffff", -- White
        base08 = "#e0e0e0", -- Variables (White biar bersih)
        base09 = "#b30000", -- Integers/Boolean (RED)
        base0A = "#b30000", -- Classes (RED)
        base0B = "#666666", -- Strings (Grey/Dim - biar ga terlalu rame)
        base0C = "#b30000", -- Support (RED)
        base0D = "#b30000", -- Functions/Methods (RED - INI HACKNYA)
        base0E = "#b30000", -- Keywords (RED)
        base0F = "#b30000", -- Deprecated
      },
      base_30 = {
        white = "#e0e0e0",
        darker_black = "#020202",
        black = "#050505", -- Main BG
        black2 = "#0a0a0a",
        one_bg = "#0a0a0a", -- Sidebar BG
        one_bg2 = "#111111",
        one_bg3 = "#1a1a1a",
        grey = "#444444",
        grey_fg = "#555555",
        grey_fg2 = "#666666",
        light_grey = "#888888",
        red = "#b30000",
        baby_pink = "#b30000",
        pink = "#b30000",
        line = "#1a1a1a", -- Split line
        green = "#445544", -- Desaturated Green
        vibrant_green = "#b30000", -- Force Red
        blue = "#b30000", -- FOLDER COLOR HACK (Folder jadi Merah)
        nord_blue = "#b30000",
        yellow = "#ccaa00", -- Gold Dim
        sun = "#ccaa00",
        purple = "#b30000",
        cyan = "#b30000",
        teal = "#b30000",
        orange = "#b30000",
        cyan_turq = "#b30000",
        statusline_bg = "#0a0a0a",
        lightbg = "#111111",
        pmenu_bg = "#b30000", -- Popup Menu Accent
        folder_bg = "#b30000",
      },
    },
  },

  -- Override Highlight Groups Spesifik
  hl_override = {
    -- Background & Borders
    Normal = { bg = "#050505", fg = "#e0e0e0" },
    NormalNC = { bg = "#050505", fg = "#666666" }, -- Inactive window dim
    NvimTreeNormal = { bg = "#050505" }, -- Sidebar sama gelapnya
    NvimTreeNormalNC = { bg = "#050505" },
    
    -- Borders Tajam
    VertSplit = { fg = "#333333", bg = "#050505" },
    WinSeparator = { fg = "#333333", bg = "#050505" },
    
    -- Cursor (Merah Darah)
    Cursor = { bg = "#b30000", fg = "#000000" },
    CursorLine = { bg = "#0f0f0f" }, -- Highlight baris aktif sangat halus
    
    -- Folders di NvimTree (Wajib Merah)
    NvimTreeFolderIcon = { fg = "#b30000" },
    NvimTreeFolderName = { fg = "#e0e0e0" },
    NvimTreeOpenedFolderName = { fg = "#b30000", bold = true },
    NvimTreeRootFolder = { fg = "#b30000", bold = true },
    
    -- Statusline Modules
    St_NormalMode = { bg = "#b30000", fg = "#000000", bold = true }, -- Merah Hitam
    St_InsertMode = { bg = "#e0e0e0", fg = "#000000", bold = true }, -- Putih Hitam
    St_VisualMode = { bg = "#555555", fg = "#ffffff", bold = true }, -- Abu Putih
    
    -- Syntax Overrides (Void Style)
    Comment = { fg = "#444444", italic = true },
    String = { fg = "#ccaa00" }, -- Emas Redup
    Function = { fg = "#b30000", bold = true }, -- Merah
    Keyword = { fg = "#b30000" }, -- Merah
    Type = { fg = "#e0e0e0" }, -- Putih
    
    -- Pmenu (Auto completion)
    Pmenu = { bg = "#0a0a0a", fg = "#e0e0e0" },
    PmenuSel = { bg = "#b30000", fg = "#000000" }, -- Selection Merah
  },
}

-- Plugin Configs (Optional, untuk memastikan NvimTree icons sesuai)
M.plugins = "custom.plugins"

return M
