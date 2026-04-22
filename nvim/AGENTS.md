# AGENTS.md — Szuryuu's Neovim Config

## Overview

NvChad v2.5 based config with Copilot, Avante, and a fully custom statusline.
Primary editor for: Vue/Nuxt, TypeScript, Python, Go, Terraform, Rust, PHP, Bash.

---

## Stack

- **Base**: NvChad v2.5 + lazy.nvim
- **Theme**: onedark (heavily customized — void/blood palette)
- **LSP**: nvim-lspconfig (managed via Mason)
- **Formatter**: conform.nvim
- **Completion**: blink.cmp
- **AI**: Avante (gpt-5.3-codex) + CopilotChat (gpt-5.2) + copilot.lua
- **Treesitter**: nvim-treesitter
- **File tree**: nvim-tree
- **Fuzzy finder**: telescope.nvim
- **Git**: gitsigns.nvim
- **Discord RPC**: neocord
- **Tracking**: vim-wakatime
- **Statusline**: Fully custom (NOT NvChad default — hardcoded in options.lua)

---

## Directory Structure

```
nvim/
├── init.lua                  ← Entry point, bootstraps lazy.nvim
├── .stylua.toml              ← Lua formatter config (DO NOT CHANGE)
├── lazy-lock.json            ← Plugin lockfile (never edit manually)
└── lua/
    ├── chadrc.lua            ← Main NvChad config (theme, ui, highlights)
    ├── options.lua           ← Custom statusline + vim options
    ├── mappings.lua          ← Keymaps
    ├── autocmds.lua          ← Autocommands
    ├── configs/
    │   ├── conform.lua       ← Formatter per filetype
    │   ├── lspconfig.lua     ← LSP server list
    │   ├── lazy.lua          ← lazy.nvim settings
    │   ├── chunk.lua         ← hlchunk indent visual
    │   └── discord.lua       ← neocord Discord RPC
    └── plugins/
        └── init.lua          ← All plugin specs
```

---

## CRITICAL RULES

### NEVER touch without explicit instruction

- `.stylua.toml` — formatter config, do not modify
- `lazy-lock.json` — never edit manually, update only via `:Lazy update`
- Color palette in `chadrc.lua` (`base_30`, `base_16`) — manually calibrated, treat as final
- Custom statusline in `options.lua` — complex and intentional, do not simplify or refactor

### Formatting

- All Lua MUST follow `.stylua.toml`: 2 spaces indent, 120 col width, double quotes
- Do not use single quotes unless the string contains a double quote
- `call_parentheses = "None"` — function calls without parentheses when no arguments

### Plugin Management

- Add new plugins → always in `lua/plugins/init.lua`
- Do NOT create separate plugin files unless config exceeds 50 lines
- If a new config file is needed → place it in `lua/configs/pluginName.lua`
- All plugins default to `lazy = true` unless there is a specific reason

### Keymaps

- Add keymaps → in `lua/mappings.lua`, NOT inside plugin configs
- Format: `map("mode", "key", action, { desc = "clear description" })`
- Do NOT override existing NvChad default keymaps without confirmation

### LSP

- Add new server → append to the list in `lua/configs/lspconfig.lua`
- Ensure the server is installed via Mason before enabling
- `virtual_text = false` is intentional — diagnostics are shown via statusline

### Formatter (conform.nvim)

- Add formatter → in `lua/configs/conform.lua`, keyed by filetype
- Vue formatter is intentionally commented out (`-- vue = { "prettier" }`) — do NOT uncomment without confirmation
- `php_cs_fixer` has custom args and env vars — do not modify

---

## Palette & Theme

Do NOT change these colors unless explicitly asked. This is the "Void & Blood" palette:

```
void    = "#050505"   Main background
module  = "#111111"   Module/statusline background
text    = "#e0e0e0"   Primary text
dim     = "#444444"   Dimmed text
blood   = "#b30000"   Red accent (mode indicator)
gold    = "#ccaa00"   Yellow accent (git, LSP name)
blue    = "#86d1e9"   Blue accent (keywords, functions, pmenu)
```

Highlight overrides exist in two places:

- `chadrc.lua` → `M.base46.hl_override` (NvChad highlight groups)
- `options.lua` → `vim.api.nvim_set_hl` (custom statusline highlight groups)

If modifying highlights, ensure consistency across BOTH files.

---

## AI Config (Avante & CopilotChat)

- **Avante model**: `gpt-5.3-codex` (defined in `plugins/init.lua`)
- **CopilotChat model**: `gpt-5.1` (defined in `plugins/init.lua`)
- **Copilot keymaps**: accept `<C-l>`, accept word `<C-j>`, dismiss `<C-]>`
- `auto_apply_diff_after_generation = false` — always show diff for review before applying

Do NOT change models without confirmation — model selection is intentional per tool.

---

## Existing Keymaps

| Key            | Mode          | Action                    |
| -------------- | ------------- | ------------------------- |
| `;`            | Normal        | Enter command mode        |
| `jk`           | Insert        | Escape                    |
| `<C-t>`        | Normal        | Minty color picker        |
| `<RightMouse>` | Normal        | Context menu              |
| `<A-Down>`     | Normal/Visual | Move line/selection down  |
| `<A-Up>`       | Normal/Visual | Move line/selection up    |
| `<C-l>`        | Insert        | Accept Copilot suggestion |
| `<C-j>`        | Insert        | Accept Copilot word       |

Do NOT use any of these keys for new mappings.

---

## Validation After Changes

Agent MUST include these validation steps after every change:

```bash
# Check Lua syntax
nvim --headless -c "luafile lua/plugins/init.lua" -c "q"

# Check formatting
stylua --check lua/

# Full load test (from terminal)
nvim --headless +qa
```

---

## Do NOT Modify

- `neocord` / discord config — personal preference, leave as is
- ASCII art header in `chadrc.lua` — intentionally chosen (dragon), do not replace
- `wakatime` plugin — activity tracking, do not disable
- `timerly` and `showkeys` — utility plugins, already lazy-loaded

---

## Task Operations Log

### 2026-04-20

- Updated `lua/mappings.lua` normal mode mapping for `<Tab>` to use Neovim alternate buffer toggle: `"<cmd>b#<CR>"`.
- Confirmed mapping description is `"Switch to last buffer"`.
- Did not change any `<A-Tab>` or other Alt-based mappings.
- No plugins were added.
- Validation run: `nvim --headless +qa` (completed with an existing deprecation warning: `vim.lsp.with() is deprecated`).

- `indent-blankline` — intentionally `enabled = false` (replaced by hlchunk)
