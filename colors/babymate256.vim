" Vim color file
"
" Port of gtksourceview babymate color scheme for 256-color terminals by Anton Bobrov (bobrov@vl.ru)

set background=dark

if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif



let colors_name = "babymate256"

" General colors
hi Normal guifg=#e3e3e3 ctermfg=254 guibg=#222429 ctermbg=235 gui=none cterm=none
hi Cursor guifg=#222429 ctermfg=235 guibg=#e3e3e3 ctermbg=254 gui=none cterm=none
hi Visual guibg=#506681 ctermbg=60 gui=none cterm=none
hi VisualNOS guifg=#e3e3e3 ctermfg=254 guibg=#666666 ctermbg=241 gui=none cterm=none
hi Search guifg=#e3e3e3 ctermfg=254 guibg=#506681 ctermbg=60 gui=none cterm=none
" hi Folded gui=none cterm=none
" hi Title gui=none cterm=none
" hi StatusLine gui=none cterm=none
" hi VertSplit gui=none cterm=none
" hi StatusLineNC gui=none cterm=none
hi LineNr guifg=#666666 ctermfg=241 guibg=#000000 ctermbg=16 gui=none cterm=none
hi NonText guifg=#666666 ctermfg=241 guibg=#222429 ctermbg=235 gui=none cterm=none
" hi SpecialKey gui=none cterm=none
" hi WarningMsg gui=none cterm=none
hi ErrorMsg guifg=#e3e3e3 ctermfg=254 gui=none cterm=none
hi Error guifg=#e3e3e3 ctermfg=254 gui=none cterm=none

" Vim >= 7.0 specific colors
if version >= 700
    hi CursorLine guibg=#373a42 ctermbg=237 gui=none cterm=none
    hi MatchParen guifg=#e3e3e3 ctermfg=254 guibg=#000000 ctermbg=16 gui=none cterm=none
    " hi Pmenu gui=none cterm=none
    " hi PmenuSel gui=none cterm=none
endif

" Diff highlighting
hi DiffAdd guifg=#cbf8b0 ctermfg=193 gui=none cterm=none
hi DiffDelete guifg=#ffc0cb ctermfg=217 gui=none cterm=none
hi DiffText guifg=#e3e3e3 ctermfg=254 guibg=#222429 ctermbg=235 gui=none cterm=none
hi DiffChange guifg=#9cbddd ctermfg=110 gui=none cterm=none

"hi CursorIM
"hi Directory
"hi IncSearch
"hi Menu
"hi ModeMsg
"hi MoreMsg
"hi PmenuSbar
"hi PmenuThumb
"hi Question
"hi Scrollbar
"hi SignColumn
"hi SpellBad
"hi SpellCap
"hi SpellLocal
"hi SpellRare
"hi TabLine
"hi TabLineFill
"hi TabLineSel
"hi Tooltip
"hi User1
"hi User9
"hi WildMenu


" Syntax highlighting
hi Keyword guifg=#ffc0cb ctermfg=217 gui=none cterm=none
" hi Statement guifg=#d0cffe ctermfg=189 gui=none cterm=none
hi Statement guifg=#ffc0cb ctermfg=217 gui=none cterm=none
hi Constant guifg=#e3e3e3 ctermfg=254 gui=none cterm=none
hi Number guifg=#9cbddd ctermfg=110 gui=none cterm=none
hi PreProc guifg=#ffc0cb ctermfg=217 gui=none cterm=none
hi Function guifg=#cbf8b0 ctermfg=193 gui=none cterm=none
hi Identifier guifg=#9cbddd ctermfg=110 gui=none cterm=none
hi Builtin guifg=#9cbddd ctermfg=110 gui=none cterm=none
hi Type guifg=#cbf8b0 ctermfg=193 gui=none cterm=none
hi Special guifg=#e3e3e3 ctermfg=254 gui=none cterm=none
hi String guifg=#9cbddd ctermfg=110 gui=none cterm=none
hi Character guifg=#ffc0cb ctermfg=217 gui=none cterm=none
hi Comment guifg=#666666 ctermfg=241 gui=italic cterm=italic
hi Todo guifg=#e3e3e3 ctermfg=254 guibg=#000000 ctermbg=16 gui=none cterm=none
hi Boolean guifg=#9cbddd ctermfg=110 gui=none cterm=none


" Links
hi! link FoldColumn Folded
hi! link CursorColumn CursorLine
hi! link ColorColumn CursorLine

hi! link pythonBuiltin Builtin
hi! link pythonKeyword Statement

" xterm color fix:
" printf '\033]11;#222429\007\033]4;16;#000000;60;#506681;110;#9CBDDD;189;#D0CFFE;193;#CBF8B0;217;#FFC0CB;235;#222429;237;#373A42;241;#666666;254;#E3E3E3\007'

" urxvt color fix:
" urxvt -bg #222429
" urxvt*background: #222429
" printf '\033]4;16;#000000;60;#506681;110;#9CBDDD;189;#D0CFFE;193;#CBF8B0;217;#FFC0CB;235;#222429;237;#373A42;241;#666666;254;#E3E3E3\007'
