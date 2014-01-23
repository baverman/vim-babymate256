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
" hi Normal	ctermfg=252	ctermbg=234	cterm=none	guifg=#e3e0d7	guibg=#242424	gui=none

" General colors
hi Normal guifg=#eeeeee ctermfg=255 guibg=#222429 ctermbg=235
hi Cursor guifg=#222429 ctermfg=235 guibg=#eeeeee ctermbg=255
hi Visual guibg=#506681 ctermbg=60
hi VisualNOS guifg=#eeeeee ctermfg=255 guibg=#666666 ctermbg=241
hi Search guifg=#000000 ctermfg=16 guibg=#eeeeee ctermbg=255
" hi Folded 
" hi Title 
" hi StatusLine 
" hi VertSplit 
" hi StatusLineNC 
hi LineNr guifg=#666666 ctermfg=241 guibg=#000000 ctermbg=16
hi NonText guifg=#666666 ctermfg=241
" hi SpecialKey 
" hi WarningMsg 
hi ErrorMsg guifg=#eeeeee ctermfg=255 cterm=bold gui=bold
hi Error guifg=#eeeeee ctermfg=255 cterm=bold gui=bold

" Vim >= 7.0 specific colors
if version >= 700
    hi CursorLine guibg=#15171c ctermbg=233
    hi MatchParen guifg=#eeeeee ctermfg=255 guibg=#000000 ctermbg=16 cterm=bold gui=bold
    " hi Pmenu 
    " hi PmenuSel 
endif

" Diff highlighting
hi DiffAdd guifg=#cbf8b0 ctermfg=193
hi DiffDelete guifg=#ffc0cb ctermfg=217
hi DiffText guifg=#eeeeee ctermfg=255 guibg=#222429 ctermbg=235
hi DiffChange guifg=#9cbddd ctermfg=110

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
hi Keyword guifg=#ffc0cb ctermfg=217 cterm=bold gui=bold
" hi Statement guifg=#d0cffe ctermfg=189
hi Statement guifg=#ffc0cb ctermfg=217 cterm=bold gui=bold
hi Constant guifg=#eeeeee ctermfg=255
hi Number guifg=#9cbddd ctermfg=110
hi PreProc guifg=#ffc0cb ctermfg=217
hi Function guifg=#cbf8b0 ctermfg=193
hi Identifier guifg=#9cbddd ctermfg=110 cterm=bold gui=bold
hi Type guifg=#cbf8b0 ctermfg=193
hi Special guifg=#eeeeee ctermfg=255
hi String guifg=#9cbddd ctermfg=110
hi Character guifg=#ffc0cb ctermfg=217
hi Comment guifg=#666666 ctermfg=241 gui=italic
hi Todo guifg=#eeeeee ctermfg=255 guibg=#000000 ctermbg=16 cterm=bold gui=bold
hi Boolean guifg=#9cbddd ctermfg=110 cterm=bold gui=bold


" Links
hi! link FoldColumn Folded
hi! link CursorColumn CursorLine
