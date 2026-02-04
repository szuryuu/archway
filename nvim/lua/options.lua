require "nvchad.options"

local M = {}

M.stbufnr = function()
  return vim.api.nvim_win_get_buf(vim.g.statusline_winid or 0)
end

local o = vim.o
local opt = vim.opt

-- --- RONIN CORE OPTIONS ---
o.cursorlineopt = "both"
o.background = "dark"
opt.relativenumber = true
o.laststatus = 3 -- Global statusline (Void Style)

-- FIX: Gunakan 'opt' bukan 'o' karena nilainya adalah Table
opt.fillchars = { eob = " " } 

o.cursorline = true

-- --- RONIN PALETTE (VOID & BLOOD) ---
local colors = {
  void    = "#050505", -- Main Background
  module  = "#111111", -- Module Background
  text    = "#e0e0e0",
  dim     = "#444444",
  blood   = "#b30000", -- Main Accent (Red)
  gold    = "#ccaa00", -- Secondary Accent
  warn    = "#e5c07b",
  info    = "#61afef",
  hint    = "#98c379",
}

local highlights = {
  Normal          = { fg = colors.text, bg = colors.void },
  Separator       = { fg = colors.module, bg = colors.void }, 
  Separator2      = { fg = colors.dim, bg = colors.module },
  
  ModeText        = { fg = colors.blood, bg = colors.module, bold = true },
  PathText        = { fg = colors.text, bg = colors.module, bold = true },
  FileText        = { fg = colors.text, bg = colors.module },
  FileType        = { fg = colors.blood, bg = colors.module, bold = true },
  
  BranchName      = { fg = colors.gold, bg = colors.module, bold = true },
  LineText        = { fg = colors.blood, bg = colors.module },
  ColumnText      = { fg = colors.text, bg = colors.module },
  PercentageText  = { fg = colors.text, bg = colors.module },
  TotalLineText   = { fg = colors.dim, bg = colors.module },
  
  DiagnosticsText = { fg = colors.dim, bg = colors.module },
  LSPColor        = { fg = colors.gold, bg = colors.module, bold = true },

  DiagError       = { fg = colors.blood, bg = colors.module },
  DiagWarn        = { fg = colors.warn, bg = colors.module },
  DiagInfo        = { fg = colors.info, bg = colors.module },
  DiagHint        = { fg = colors.hint, bg = colors.module },
}

for group, opts in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, opts)
end

_G.RecolorMode = function()
  local mode = vim.fn.mode()
  local color_map = {
    n     = { fg = colors.blood, bg = colors.module }, 
    i     = { fg = "#ffffff", bg = colors.module },    
    R     = { fg = colors.gold, bg = colors.module },  
    v     = { fg = "#ff5555", bg = colors.module },    
    V     = { fg = "#ff5555", bg = colors.module },
    ["\22"] = { fg = "#ff5555", bg = colors.module },
    c     = { fg = colors.text, bg = colors.module },
    t     = { fg = colors.text, bg = colors.module },
  }

  local hl = color_map[mode]
  if hl then
    vim.api.nvim_set_hl(0, "ModeText", hl)
  end
  return ""
end

_G.SetFiletype = function(filetype)
  return (filetype == nil or filetype == "") and "unknown" or filetype
end

_G.file = function()
  local icon = "󰈤"
  local path = vim.api.nvim_buf_get_name(M.stbufnr())
  local name = (path == "" and "Empty") or path:match "([^/\\]+)[/\\]*$"

  if name ~= "Empty" then
    local devicons_present, devicons = pcall(require, "nvim-web-devicons")

    if devicons_present then
      local ft_icon = devicons.get_icon(name)
      icon = (ft_icon ~= nil and ft_icon) or icon
    end
  end

  return " " .. icon .. " " .. name
end

_G.git = function()
  if not vim.b[M.stbufnr()].gitsigns_head or vim.b[M.stbufnr()].gitsigns_git_status then
    return ""
  end

  local git_status = vim.b[M.stbufnr()].gitsigns_status_dict

  local added = (git_status.added and git_status.added ~= 0) and ("  " .. git_status.added) or ""
  local changed = (git_status.changed and git_status.changed ~= 0) and ("  " .. git_status.changed) or ""
  local removed = (git_status.removed and git_status.removed ~= 0) and ("  " .. git_status.removed) or ""
  local branch_name = " " .. git_status.head

  return " " .. branch_name .. added .. changed .. removed .. " "
end

_G.diagnostics_color = function()
  if not rawget(vim, "lsp") then
    return "%#DiagnosticsText# %*"
  end

  local err = #vim.diagnostic.get(M.stbufnr(), { severity = vim.diagnostic.severity.ERROR })
  local warn = #vim.diagnostic.get(M.stbufnr(), { severity = vim.diagnostic.severity.WARN })
  local info = #vim.diagnostic.get(M.stbufnr(), { severity = vim.diagnostic.severity.INFO })
  local hints = #vim.diagnostic.get(M.stbufnr(), { severity = vim.diagnostic.severity.HINT })

  local parts = {}
  if err > 0 then table.insert(parts, "%#DiagError# " .. err .. " %*") end
  if warn > 0 then table.insert(parts, "%#DiagWarn# " .. warn .. " %*") end
  if info > 0 then table.insert(parts, "%#DiagInfo#󰋼 " .. info .. " %*") end
  if hints > 0 then table.insert(parts, "%#DiagHint#󰛩 " .. hints .. " %*") end

  if #parts == 0 then
    return "%#DiagnosticsText# %*"
  else
    return table.concat(parts, " ")
  end
end

_G.lsp = function()
  if rawget(vim, "lsp") then
    for _, client in ipairs(vim.lsp.get_clients()) do
      if client.attached_buffers[M.stbufnr()] then
        return "   " .. client.name .. " "
      end
    end
  end
  return ""
end

_G.HandleColumnGap = function()
  return " "
end

-- STATUSLINE LAYOUT (VOID STYLE)
vim.opt.statusline = table.concat({
  "%{%v:lua.RecolorMode()%}",

  -- Left Module (Mode)
  "%#Separator#█",
  "%#ModeText#",
  "%#Separator#█ ",

  -- File Info
  "%#Separator#█",
  "%#PathText#%{expand('%:t')}", -- Short filename only (cleaner)
  "%#Separator#█ ",

  -- Middle (Diagnostics)
  "%{%v:lua.diagnostics_color()%}",

  "%=", -- Spacer

  -- Right Modules
  "%#Separator#█",
  "%#FileType#%{v:lua.file()}",
  "%#Separator#█ ",

  "%#Separator#",
  "%#BranchName#%{v:lua.git()}",
  "%#Separator# ",

  "%#Separator#█",
  "%#LSPColor#%{v:lua.lsp()}",
  "%#Separator2#|",
  "%#ColumnText# Ln %l, Col %c ",
  "%#Separator2#|",
  "%#PercentageText# %p%% ",
  "%#Separator#█",
})
