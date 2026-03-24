#!/bin/bash

T='\033[0m'
H='\033[38;2;134;209;233m'
G='\033[38;2;204;170;0m'
W='\033[38;2;224;224;224m'
D='\033[38;2;68;68;68m'

echo -e "
${H}╔══════════════════════════════════════════════════════════════════════════════════╗
║                            NEOVIM — SZURYUU                                      ║
╚══════════════════════════════════════════════════════════════════════════════════╝${T}

  ${G}MODES${T}                                  ${G}NAVIGATION${T}
  ${D}─────────────────────────────────────  ─────────────────────────────────────${T}
  ${H}i${T}                Insert mode           ${H}h j k l${T}         Left/Down/Up/Right
  ${H}v${T}                Visual mode           ${H}w / b${T}           Next/prev word
  ${H}V${T}                Visual line           ${H}gg / G${T}          Top / Bottom file
  ${H}Ctrl + v${T}         Visual block          ${H}{ / }${T}           Prev/next paragraph
  ${H}jk${T}               Exit insert           ${H}Ctrl+d / Ctrl+u${T} Half page down/up
  ${H}Esc${T}              Back to normal        ${H}%${T}               Jump bracket
  ${H};${T}                Command mode          ${H}zz${T}              Center cursor

  ${G}FILE${T}                                   ${G}EDIT${T}
  ${D}─────────────────────────────────────  ─────────────────────────────────────${T}
  ${H}:w${T}               Save                  ${H}u${T}               Undo
  ${H}:q${T}               Quit                  ${H}Ctrl + r${T}        Redo
  ${H}:wq${T}              Save & quit           ${H}yy${T}              Copy line
  ${H}:q!${T}              Force quit            ${H}dd${T}              Delete line
  ${H}:wa${T}              Save all              ${H}p / P${T}           Paste below/above
  ${H}:e <file>${T}        Open file             ${H}ciw${T}             Change inner word
  ${H}Space + ff${T}       Find files            ${H}di\"${T}            Delete inside quotes
  ${H}Space + fr${T}       Recent files          ${H}> / <${T}           Indent/dedent
  ${H}Space + fb${T}       Find buffers          ${H}gc${T}              Toggle comment
  ${H}Space + e${T}        File tree             ${H}~${T}               Toggle case
  ---                                    ${H}Alt + Down${T}      Move line down
  ---                                    ${H}Alt + Up${T}        Move line up

  ${G}SEARCH & REPLACE${T}                       ${G}SPLITS & TABS${T}
  ${D}─────────────────────────────────────  ─────────────────────────────────────${T}
  ${H}/word${T}            Search forward        ${H}:sp${T}             Horizontal split
  ${H}?word${T}            Search backward       ${H}:vsp${T}            Vertical split
  ${H}n / N${T}            Next/prev match       ${H}Ctrl+w h/j/k/l${T}  Navigate splits
  ${H}*${T}                Search word cursor    ${H}Ctrl+w q${T}        Close split
  ${H}Space + fw${T}       Grep in project       ${H}:tabnew${T}         New tab
  ${H}:%s/old/new/g${T}    Replace all           ${H}gt / gT${T}         Next/prev tab

  ${G}LSP${T}                                    ${G}COPILOT${T}
  ${D}─────────────────────────────────────  ─────────────────────────────────────${T}
  ${H}gd${T}               Go to definition      ${H}Ctrl + L${T}             Accept suggestion
  ${H}gr${T}               Go to references      ${H}Ctrl + J${T}             Accept word
  ${H}gD${T}               Go to declaration     ${H}Ctrl + ]${T}             Dismiss
  ${H}K${T}                Hover docs            ${H}:CopilotChat${T}         Open chat
  ${H}Space + ca${T}       Code action           ${H}:CopilotChatExplain${T}  Explain code
  ${H}Space + rn${T}       Rename symbol         ${H}:CopilotChatFix${T}      Fix bug
  ${H}Space + fm${T}       Format file           ${H}:CopilotChatOptimize${T} Optimize
  ${H}[d / ]d${T}          Prev/next diagnostic  ${H}:CopilotChatTests${T}    Gen tests
  ${H}Space + d${T}        Show diagnostic       ${H}:CopilotChatCommit${T}   Gen commit msg

  ${G}GIT (Gitsigns)${T}                         ${G}TELESCOPE${T}
  ${D}─────────────────────────────────────  ─────────────────────────────────────${T}
  ${H}Space + gs${T}       Git status            ${H}Space + ff${T}      Find files
  ${H}Space + gc${T}       Git commits           ${H}Space + fw${T}      Live grep
  ${H}Space + gb${T}       Git blame             ${H}Space + fb${T}      Buffers
  ${H}]c / [c${T}          Next/prev hunk        ${H}Space + fh${T}      Help tags
  ${H}Space + ph${T}       Preview hunk          ${H}Space + fo${T}      Old files
  ${H}Space + rh${T}       Reset hunk            ${H}Space + fc${T}      Find in current file
"
read -n 1 -s -r -p "  [any key to close]"
