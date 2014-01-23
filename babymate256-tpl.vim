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

<%!
    colors_name = 'babymate256'
    babygreen = 'cbf8b0'
    violet    = 'd0cffe'
    babypink  = 'ffc0cb'
    babyblue  = '9cbddd'

    black   = '000000'
    asfalto = '15171c'
    carbon  = '222429'
    slate   = '506681'
    grey    = '666666'
    white   = 'eeeeee'
%>

let colors_name = "${colors_name}"
" hi Normal	ctermfg=252	ctermbg=234	cterm=none	guifg=#e3e0d7	guibg=#242424	gui=none

" General colors
hi Normal ${hi(white, carbon)}
hi Cursor ${hi(carbon, white)}
hi Visual ${hi(bg=slate)}
hi VisualNOS ${hi(white, grey)}
hi Search ${hi(black, white)}
" hi Folded ${hi()}
" hi Title ${hi()}
" hi StatusLine ${hi()}
" hi VertSplit ${hi()}
" hi StatusLineNC ${hi()}
hi LineNr ${hi(grey, black)}
hi NonText ${hi(grey)}
" hi SpecialKey ${hi()}
" hi WarningMsg ${hi()}
hi ErrorMsg ${hi(white, bold=True)}
hi Error ${hi(white, bold=True)}

" Vim >= 7.0 specific colors
if version >= 700
    hi CursorLine ${hi(bg=asfalto)}
    hi MatchParen ${hi(white, black, bold=True)}
    " hi Pmenu ${hi()}
    " hi PmenuSel ${hi()}
endif

" Diff highlighting
hi DiffAdd ${hi(babygreen)}
hi DiffDelete ${hi(babypink)}
hi DiffText ${hi(white, carbon)}
hi DiffChange ${hi(babyblue)}

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
hi Keyword ${hi(babypink, bold=True)}
" hi Statement ${hi(violet)}
hi Statement ${hi(babypink, bold=True)}
hi Constant ${hi(white)}
hi Number ${hi(babyblue)}
hi PreProc ${hi(babypink)}
hi Function ${hi(babygreen)}
hi Identifier ${hi(babyblue, bold=True)}
hi Type ${hi(babygreen)}
hi Special ${hi(white, magenta)}
hi String ${hi(babyblue)}
hi Character ${hi(babypink)}
hi Comment ${hi(grey, italic=True)}
hi Todo ${hi(white, black, bold=True)}
hi Boolean ${hi(babyblue, bold=True)}


" Links
hi! link FoldColumn Folded
hi! link CursorColumn CursorLine
