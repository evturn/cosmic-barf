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
" ----------------------------------------------------------------------
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
    let l:a = ' gui=' . a:attr . ' cterm=' . a:attr
  else
    let l:a = ' gui=NONE  cterm=NONE'
  endif
  exec 'highlight ' . a:group . l:f . l:b . l:a
endfunction
"}}}
" Syntax highlighting "{{{
" ----------------------------------------------------------------------
call <SID>X('Boolean',        s:base08, '',       '')
call <SID>X('Character',      s:base10, '',       '')
call <SID>X('ColorColumn',    '',       '',       '')
call <SID>X('Comment',        s:base04, '',       '')
call <SID>X('Conceal',        s:base01, '',       '')
call <SID>X('Conditional',    s:base15, '',       '')
call <SID>X('Constant',       s:base08, '',       '')
call <SID>X('Cursor',         s:base00, s:base09, '')
call <SID>X('CursorIM',       s:base00, s:base09, '')
call <SID>X('CursorColumn',   '',       '',       '')
call <SID>X('CursorLine',     '',       '',       '')
call <SID>X('Debug',          s:base01, '',       '')
call <SID>X('Define',         s:base15, '',       '')
call <SID>X('Delimiter',      s:base10, '',       '')
call <SID>X('DiffAdd',        s:base11, '',       '')
call <SID>X('DiffChange',     s:base11, '',       '')
call <SID>X('DiffDelete',     s:base15, '',       '')
call <SID>X('DiffText',       s:base11, '',       '')
call <SID>X('Directory',      s:base09, '',       '')
call <SID>X('Error',          s:base14, '',       '')
call <SID>X('ErrorMsg',       s:base15, '',       '')
call <SID>X('Exception',      s:base15, '',       '')
call <SID>X('Float',          s:base07, '',       '')
call <SID>X('FoldColumn',     s:base02, s:base01, '')
call <SID>X('Folded',         s:base02, s:base01, '')
call <SID>X('Function',       s:base13, '',       '')
call <SID>X('Identifier',     s:base08, '',       '')
call <SID>X('Ignore',         s:base01, '',       '')
call <SID>X('IncSearch',      '',       '',       'underline')
call <SID>X('Include',        s:base15, '',       '')
call <SID>X('Label',          s:base15, '',       '')
call <SID>X('LineNr',         s:base03, '',       '')
call <SID>X('Macro',          s:base11, '',       '')
call <SID>X('MatchParen',     '',       s:base01, '')
call <SID>X('ModeMsg',        s:base11, '',       '')
call <SID>X('MoreMsg',        s:base11, '',       '')
call <SID>X('NonText',        s:base01, '',       '')
call <SID>X('Normal',         s:base05, s:base00, '')
call <SID>X('Number',         s:base07, '',       '')
call <SID>X('NvimSpacing',    s:base01, '',       '')
call <SID>X('Operator',       s:base15, '',       '')
" call <SID>X('PMenu',          '',       '',       '')
" call <SID>X('PMenuSel',       '',       '',       '')
" call <SID>X('PMenuSbar',      '',       '',       '')
" call <SID>X('PMenuThumb',     '',       '',       '')
call <SID>X('PreCondit',      s:base07, '',       '')
call <SID>X('PreProc',        s:base11, '',       '')
call <SID>X('Question',       s:base13, '',       '')
call <SID>X('Repeat',         s:base15, '',       '')
call <SID>X('Search',         s:base13, '',       'underline')
" call <SID>X('SignColumn',     '',       '',       '')
call <SID>X('Special',        s:base01, '',       '')
call <SID>X('SpecialChar',    s:base01, '',       '')
call <SID>X('SpecialComment', s:base01, '',       '')
call <SID>X('SpecialKey',     s:base01, '',       '')
call <SID>X('SpellBad',       '',       s:base01, '')
" call <SID>X('SpellLocal',     '',       '',       '')
call <SID>X('SpellCap',       s:base13, '',       '')
call <SID>X('SpellRare',      '',       s:base01, '')
call <SID>X('StatusLine',     '',       s:base01, '')
call <SID>X('StatusLineNC',   s:base01, '',       '')
call <SID>X('Statement',      s:base15, '',       '')
call <SID>X('StorageClass',   s:base15, '',       '')
call <SID>X('String',         s:base11, '',       '')
call <SID>X('Structure',      s:base09, '',       '')
" call <SID>X('TabLine',        '',       '',       '')
" call <SID>X('TabLineFill',    '',       '',       '')
" call <SID>X('TabLineSel',     '',       '',       '')
call <SID>X('Tag',            s:base15, '',       '')
" call <SID>X('Title',          '',       '',       '')
call <SID>X('Todo',           s:base09, '',       '')
call <SID>X('VertSplit',      s:base00, s:base00, '')
" call <SID>X('Visual',         '',       '',       '')
" call <SID>X('VisualNOS',      '',       '',       '')
call <SID>X('WarningMsg',     '',       s:base01, '')
call <SID>X('Whitespace',     s:base01, '',       '')
" call <SID>X('WildMenu',       '',       '',       '')
call <SID>X('keyword',        s:base09, '',       'bold')
call <SID>X('type',           s:base09, '',       '')
call <SID>X('Type',           s:base09, '',       '')
call <SID>X('Typedef',        s:base09, '',       '')
call <SID>X('typedef',        s:base09, '',       '')
"}}}
" JavaScript highlighting "{{{
" ----------------------------------------------------------------------
call <SID>X('jsArrowFuncArgs',           s:base14, '',       '')
call <SID>X('jsArrowFunction',           s:base09, '',       '')
call <SID>X('jsAsyncKeyword',            s:base09, '',       'italic')
call <SID>X('jsBlockLabel',              s:base09, '',       '')
call <SID>X('jsBlockLabelKey',           s:base09, '',       '')
call <SID>X('jsBooleanFalse',            s:base08, '',       '')
call <SID>X('jsBooleanTrue',             s:base08, '',       '')
call <SID>X('jsBraces',                  s:base15, '',       '')
call <SID>X('jsBuiltins',                s:base09, '',       '')
call <SID>X('jsCharacter',               s:base09, '',       '')
call <SID>X('jsClassBraces',             s:base05, '',       '')
call <SID>X('jsClassDefinition',         s:base13, '',       'italic')
call <SID>X('jsClassFuncName',           s:base13, '',       'italic')
call <SID>X('jsClassKeyword',            s:base09, '',       '')
call <SID>X('jsClassMethodType',         s:base15, '',       '')
call <SID>X('jsClassProperty',           s:base13, '',       '')
call <SID>X('jsDecorator',               s:base15, '',       '')
call <SID>X('jsDecoratorFunction',       s:base09, '',       '')
call <SID>X('jsDestructuringAssignment', s:base10, '',       '')
call <SID>X('jsDestructuringBraces',     s:base10, '',       '')
call <SID>X('jsDestructuringNoise',      s:base10, '',       '')
call <SID>X('jsExport',                  s:base15, '',       '')
call <SID>X('jsExportDefault',           s:base15, '',       '')
call <SID>X('jsExtendsKeyword',          s:base09, '',       '')
call <SID>X('jsFloat',                   s:base07, '',       '')
call <SID>X('jsForAwait',                s:base15, '',       '')
call <SID>X('jsFrom',                    s:base15, '',       '')
call <SID>X('jsFuncArgOperator',         s:base14, '',       '')
call <SID>X('jsFuncArgs',                s:base14, '',       '')
call <SID>X('jsFuncBraces',              s:base05, '',       '')
call <SID>X('jsFuncCall',                s:base13, '',       '')
call <SID>X('jsFuncName',                s:base13, '',       'italic')
call <SID>X('jsFuncParens',              s:base09, '',       '')
call <SID>X('jsFunction',                s:base09, '',       '')
call <SID>X('jsGenerator',               s:base09, '',       '')
call <SID>X('jsGlobalNodeObjects',       s:base09, '',       '')
call <SID>X('jsGlobalObjects',           s:base09, '',       '')
call <SID>X('jsImport',                  s:base15, '',       '')
call <SID>X('jsLabel',                   s:base15, '',       '')
call <SID>X('jsModuleAs',                s:base15, '',       '')
call <SID>X('jsModuleAsterisk',          s:base15, '',       '')
call <SID>X('jsNoise',                   s:base10, '',       '')
call <SID>X('jsNull',                    s:base09, '',       '')
call <SID>X('jsNumber',                  s:base07, '',       '')
call <SID>X('jsObjectBraces',            s:base05, '',       '')
call <SID>X('jsObjectFuncName',          s:base09, '',       'italic')
call <SID>X('jsObjectKey',               s:base06, '',       '')
call <SID>X('jsObjectKeyComputed',       s:base06, '',       '')
call <SID>X('jsObjectKeyString',         s:base12, '',       '')
call <SID>X('jsObjectMethodType',        s:base13, '',       '')
call <SID>X('jsObjectStringKey',         s:base12, '',       '')
call <SID>X('jsParens',                  s:base05, '',       '')
call <SID>X('jsPrototype',               s:base09, '',       'italic')
call <SID>X('jsSpecial',                 s:base07, '',       '')
call <SID>X('jsStorageClass',            s:base09, '',       '')
call <SID>X('jsString',                  s:base11, '',       '')
call <SID>X('jsSuper',                   s:base09, '',       'italic')
call <SID>X('jsSwitchBraces',            s:base09, '',       '')
call <SID>X('jsSwitchCase',              s:base15, '',       '')
call <SID>X('jsSwitchColon',             s:base15, '',       '')
call <SID>X('jsTaggedTemplate',          s:base15, '',       '')
call <SID>X('jsTemplateBraces',          s:base15, '',       '')
call <SID>X('jsTemplateExpression',      s:base15, '',       '')
call <SID>X('jsTernaryIfOperator',       s:base15, '',       '')
call <SID>X('jsThis',                    s:base09, '',       '')
call <SID>X('jsUndefined',               s:base09, '',       '')
"}}}
" NERDTree highlighting "{{{
" ----------------------------------------------------------------------
call <SID>X('NERDTreeCWD',       s:base12, '',       'italic')
call <SID>X('NERDTREEDir',       s:base12, '',       'italic')
call <SID>X('NERDTreeFile',      s:base09, '',       '')
call <SID>X('NERDTreeClosable',  s:base13, '',       '')
call <SID>X('NERDTreeOpenable',  s:base09, '',       '')
call <SID>X('NERDTreeDirSlash',  s:base09, '',       '')
call <SID>X('NERDTreeHelp',      s:base06, '',       '')
call <SID>X('NERDTreeHelpKey',   s:base09, '',       '')
call <SID>X('NERDTreeHelpTitle', s:base11, '',       'italic')
"}}}
"
" vim:fdm=marker:foldlevel=0

