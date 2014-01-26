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
hi Normal guifg=#eeeeee ctermfg=255 guibg=#222429 ctermbg=235 gui=none cterm=none
hi Cursor guifg=#222429 ctermfg=235 guibg=#eeeeee ctermbg=255 gui=none cterm=none
hi Visual guibg=#506681 ctermbg=60 gui=none cterm=none
hi VisualNOS guifg=#eeeeee ctermfg=255 guibg=#666666 ctermbg=241 gui=none cterm=none
hi Search guifg=#000000 ctermfg=16 guibg=#eeeeee ctermbg=255 gui=none cterm=none
" hi Folded gui=none cterm=none
" hi Title gui=none cterm=none
" hi StatusLine gui=none cterm=none
" hi VertSplit gui=none cterm=none
" hi StatusLineNC gui=none cterm=none
hi LineNr guifg=#666666 ctermfg=241 guibg=#000000 ctermbg=16 gui=none cterm=none
hi NonText guifg=#666666 ctermfg=241 gui=none cterm=none
" hi SpecialKey gui=none cterm=none
" hi WarningMsg gui=none cterm=none
hi ErrorMsg guifg=#eeeeee ctermfg=255 gui=bold cterm=bold
hi Error guifg=#eeeeee ctermfg=255 gui=bold cterm=bold

" Vim >= 7.0 specific colors
if version >= 700
    hi CursorLine guibg=#15171c ctermbg=233 gui=none cterm=none
    hi MatchParen guifg=#eeeeee ctermfg=255 guibg=#000000 ctermbg=16 gui=bold cterm=bold
    " hi Pmenu gui=none cterm=none
    " hi PmenuSel gui=none cterm=none
endif

" Diff highlighting
hi DiffAdd guifg=#cbf8b0 ctermfg=193 gui=none cterm=none
hi DiffDelete guifg=#ffc0cb ctermfg=217 gui=none cterm=none
hi DiffText guifg=#eeeeee ctermfg=255 guibg=#222429 ctermbg=235 gui=none cterm=none
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
hi Keyword guifg=#ffc0cb ctermfg=217 gui=bold cterm=bold
" hi Statement guifg=#d0cffe ctermfg=189 gui=none cterm=none
hi Statement guifg=#ffc0cb ctermfg=217 gui=bold cterm=bold
hi Constant guifg=#eeeeee ctermfg=255 gui=none cterm=none
hi Number guifg=#9cbddd ctermfg=110 gui=none cterm=none
hi PreProc guifg=#ffc0cb ctermfg=217 gui=none cterm=none
hi Function guifg=#cbf8b0 ctermfg=193 gui=none cterm=none
hi Identifier guifg=#9cbddd ctermfg=110 gui=bold cterm=bold
hi Type guifg=#cbf8b0 ctermfg=193 gui=none cterm=none
hi Special guifg=#eeeeee ctermfg=255 gui=none cterm=none
hi String guifg=#9cbddd ctermfg=110 gui=none cterm=none
hi Character guifg=#ffc0cb ctermfg=217 gui=none cterm=none
hi Comment guifg=#666666 ctermfg=241 gui=italic cterm=italic
hi Todo guifg=#eeeeee ctermfg=255 guibg=#000000 ctermbg=16 gui=bold cterm=bold
hi Boolean guifg=#9cbddd ctermfg=110 gui=bold cterm=bold


" Links
hi! link FoldColumn Folded
hi! link CursorColumn CursorLine
