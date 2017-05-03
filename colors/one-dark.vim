" One Dark colorscheme
"
" Maintainer: Patrick Williams <patrickw276@gmail.com>
" Last Change: 2017 April 24
"
" Port of the Atom One Dark theme to vim.

highlight clear

" Reset String -> Constant links etc if they were reset
if exists("syntax_on")
  syntax reset
endif

set background=dark

let g:colors_name = "one-dark"

" Monochrome
let s:mono_1 = '#abb2bf'
let s:mono_2 = '#828997'
let s:mono_3 = '#5c6370'

" Colors
let s:cyan = '#56b6c2'
let s:blue = '#61afef'
let s:purple = '#c678dd'
let s:green = '#98c379'

let s:red_1 = '#e06c75'
let s:red_2 = '#be5046'

let s:orange_1 = '#d19a66'
let s:orange_2 = '#e4bf7a'

" Base Colors
let s:syntax_bg = '#282c34'

let s:selected = '#3e4451'
" Blue (accent #528BFF)

function! SetColor(group, options)
  let cmd = "hi " . a:group
  if has_key(a:options, 'fg')
    let cmd = cmd . " guifg=" . a:options.fg
  endif
  if has_key(a:options, 'bg')
    let cmd = cmd . " guibg=" . a:options.bg
  endif
  if has_key(a:options, 'style')
    let cmd = cmd . " gui=" . a:options.style
  endif
  if has_key(a:options, 'sp')
    let cmd = cmd . " guisp=" . a:options.sp
  endif
  exec cmd
endfunction

call SetColor('Boolean', {'fg': s:orange_1})
call SetColor('CDefineVar', {'fg': s:blue})
call SetColor('CIncluded', {'fg': s:green})
call SetColor('Character', {'fg': s:green})
call SetColor('ColorColumn', {'bg': '#3c4049'})
call SetColor('Comment', {'fg': s:mono_3, 'style': 'italic'})
call SetColor('Conditional', {'fg': s:purple})
call SetColor('Constant', {'fg': s:orange_1})
call SetColor('CppType', {'fg': s:purple})
call SetColor('Cursor', {'bg': '#4869a7'})
call SetColor('CursorLine', {'bg': '#2c323b'})
call SetColor('CursorLineNr', {'fg': s:mono_1, 'style': 'none'})
call SetColor('Delimiter', {'fg': s:mono_1})
call SetColor('DiffAdd', {'bg': '#08490a'})
call SetColor('DiffChange', {'bg': '#e4c990'})
call SetColor('DiffDelete', {'fg': '#e45d5c', 'bg': 'NONE', 'style': 'none'})
call SetColor('DiffText', {'fg': 'White', 'bg': 'SteelBlue', 'style': 'none'})
call SetColor('Directory', {'fg': s:blue})
call SetColor('Error', {'fg': s:red_1, 'bg': 'NONE', 'style': 'bold'})
call SetColor('ErrorMsg', {'fg': s:red_1, 'bg': 'NONE', 'style': 'bold'})
call SetColor('Float', {'fg': s:orange_1})
call SetColor('FoldColumn', {'fg': 'NONE', 'bg': 'NONE'})
call SetColor('Folded', {'fg': 'NONE', 'bg': 'NONE', 'style': 'italic'})
call SetColor('Function', {'fg': s:blue})
call SetColor('Identifier', {'fg': s:red_1})
call SetColor('Include', {'fg': s:purple})
call SetColor('JsonKeyword', {'fg': s:red_1})
call SetColor('Keyword', {'fg': s:purple})
call SetColor('LineNr', {'fg': '#4b5262', 'style': 'none'})
call SetColor('Macro', {'fg': s:purple})
call SetColor('MatchParen', {'bg': '#353b45', 'style': 'underline'})
call SetColor('NonText', {'fg': s:syntax_bg})
call SetColor('Normal', {'fg': s:mono_1, 'bg': s:syntax_bg})
call SetColor('Number', {'fg': s:orange_1})
call SetColor('Operator', {'fg': s:mono_1})
call SetColor('PMenu', {'fg': s:mono_1, 'bg': '#23262d'})
call SetColor('PMenuSel', {'fg': '#d7d8db', 'bg': '#3a3f4b'})
call SetColor('Paren', {'fg': s:mono_1})
call SetColor('PreProc', {'fg': s:orange_1})
call SetColor('PythonBuiltin', {'fg': s:cyan})
call SetColor('PythonClass', {'fg': s:orange_2})
call SetColor('PythonDecorator', {'fg': s:blue})
call SetColor('PythonOperator', {'fg': s:purple})
call SetColor('PythonSelf', {'fg': s:red_1})
call SetColor('Question', {'fg': '#98c379'})
call SetColor('Repeat', {'fg': s:purple})
call SetColor('Search', {'fg': 'NONE', 'bg': s:selected})
call SetColor('SignColumn', {'bg': 'NONE'})
call SetColor('Special', {'fg': s:red_1})
call SetColor('SpecialChar', {'fg': s:cyan})
call SetColor('SpecialKey', {'fg': '#528bff'})
call SetColor('SpellBad', {'sp': s:red_1})
call SetColor('Statement', {'fg': s:purple, 'style': 'none'})
call SetColor('Statusline', {'fg': '#9da5b4', 'bg': '#21252b', 'style': 'none'})
call SetColor('StatuslineNC', {'fg': '#21252b', 'bg': '#9da5b4'})
call SetColor('StorageClass', {'fg': s:purple})
call SetColor('String', {'fg': s:green})
call SetColor('Structure', {'fg': s:purple})
call SetColor('SyntasticErrorSign', {'fg': s:red_1, 'style': 'bold'})
call SetColor('SyntasticWarning', {'fg': s:orange_2, 'style': 'bold'})
call SetColor('Tabline', {'fg': '#9da5b4', 'bg': '#21252b', 'style': 'NONE'})
call SetColor('TablineFill', {'fg': '#21252b', 'bg': '#21252b'})
call SetColor('TablineSel', {'style': 'NONE'})
call SetColor('Title', {'fg': '#9da5b4', 'style': 'NONE'})
call SetColor('Todo', {'fg': s:purple, 'bg': s:syntax_bg, 'style': 'italic'})
call SetColor('Type', {'fg': s:purple, 'style': 'none'})
call SetColor('VertSplit', {'fg': '#181a1f', 'bg': '#21252b', 'style': 'NONE'})
call SetColor('VimVar', {'fg': s:cyan})
call SetColor('Visual', {'bg': s:selected})
call SetColor('WildMenu', {'fg': s:mono_1, 'bg': s:selected})
call SetColor('YamlPlainScalar', {'fg': s:green})
call SetColor('XmlAttrib', {'fg': s:orange_1})
call SetColor('XmlProcessingDelim', {'fg': s:mono_1})
call SetColor('XmlTag', {'fg': s:mono_1})
call SetColor('XmlTagName', {'fg': s:red_1})

" vim: sw=2
