"
"  "        ______ ____  _____  __  ___ ____ ______   ____   ___  _______   ______   "
"  "   ____/ ____// __ \/ ___/ /  |/  //  _// ____/  / __ ) /   |   / __ \ / ____/   "
"  "      / /   _/ / / /\__ \ / /|_/ / / / / /    __/ __  |/ /| |  / /_/ // /_       "
"  "  ---/ /  __/ /_/ /___/ // /  / /_/ / / /___   / /_/ // ___ | / _, _// __/       "
"  "    / /     \____//____//_/  /_//___/ \____/ _/_____//_/  |_|/_/ |_|/_/          "
"  "  -/ /_______________________________________________________________________    "
"  "   \________________________________________________________________________/    "
"
" Name:         Cosmic Barf
" Author:       Evan Turner <ev@evturn.com>
" URL:          https://github.com/evturn/cosmic-barf
" License:      MIT
" Created:      Nov 2018
" Modified:     Nov 2018
"
" Colorscheme initialization "{{{
" ----------------------------------------------------------------------
highlight clear
if has('syntax_on')
  syntax reset
endif
let g:colors_name = 'cosmic-barf'
"}}}
" GUI & Term Palettes "{{{
" ----------------------------------------------------------------------
let s:base00 = ['#002b36', '234']
let s:base01 = ['#003847', '236']
let s:base02 = ['#004052', '237']
let s:base03 = ['#005a6f', '238']
let s:base04 = ['#657b83', '240']
let s:base05 = ['#eee8d5', '187']
let s:base06 = ['#fdf6e3', '230']
let s:base07 = ['#0087ff', '33']
let s:base08 = ['#5fafff', '75']
let s:base09 = ['#5fd7ff', '81']
let s:base10 = ['#00ffff', '14']
let s:base11 = ['#00ffaf', '49']
let s:base12 = ['#afffaf', '157']
let s:base13 = ['#d7ff00', '190']
let s:base14 = ['#ff5f00', '202']
let s:base15 = ['#ff0087', '198']
"}}}
" Highlight function "{{{
function! <SID>X(group, fg, bg, attr)
  if !empty(a:fg)
    let l:f = ' guifg=' . a:fg[0] . ' ctermfg=' . a:fg[1]
  else
    let l:f = ' guifg=NONE  ctermfg=NONE'
  endif
  if !empty(a:bg)
    let l:b = ' guibg=' . a:bg[0] . ' ctermbg=' . a:bg[1]
  else
    let l:b = ' guibg=NONE  ctermbg=NONE'
  endif
  if !empty(a:attr)
    let l:a = ' gui=' . attr . ' cterm=' . attr
  else
    let l:a = ' gui=NONE  cterm=NONE'
  endif
  exec 'highlight ' . a:group . l:f . l:b . l:a
endfunction
"}}}
"
" vim:fdm=marker:foldlevel=0
