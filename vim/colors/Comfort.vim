" Vim color file
" color scheme for me.
" Language: C/C++

"set background=dark
highlight clear

if exists("syntax_on")
   syntax reset
endif

let g:colors_name = "Comfort"

" highlight groups
" Base groups
hi   ColorColumn   ctermfg=NONE  ctermbg=237   cterm=NONE  guifg=NONE     guibg=#3a3a3a  gui=NONE
"hi  Conceal                                                                             
hi   Cursor        ctermfg=NONE  ctermbg=231   cterm=NONE  guifg=NONE     guibg=#ffffff  gui=NONE
hi   CursorIM      ctermfg=NONE  ctermbg=231   cterm=NONE  guifg=NONE     guibg=#ffffff  gui=NONE
hi   CursorColumn  ctermfg=NONE  ctermbg=237   cterm=NONE  guifg=NONE     guibg=#3a3a3a  gui=NONE
hi   link          CursorLine    CursorColumn                                            
hi   Directory     ctermfg=75    ctermbg=NONE  cterm=NONE  guifg=#5fafff  guibg=NONE     gui=NONE
hi   DiffAdd       ctermfg=118   ctermbg=NONE  cterm=NONE  guifg=#87ff00  guibg=NONE     gui=NONE
hi   DiffChange    ctermfg=166   ctermbg=NONE  cterm=NONE  guifg=#d75f00  guibg=NONE     gui=NONE
hi   DiffDelete    ctermfg=124   ctermbg=NONE  cterm=NONE  guifg=#af0000  guibg=NONE     gui=NONE
hi   DiffText      ctermfg=166   ctermbg=NONE  cterm=NONE  guifg=#d75f00  guibg=NONE     gui=NONE
hi   ErrorMsg      ctermfg=231   ctermbg=38    cterm=NONE  guifg=#ffffff  guibg=#00afd7  gui=NONE
hi   VertSplit     ctermfg=59    ctermbg=59    cterm=NONE  guifg=#5f5f5f  guibg=#5f5f5f  gui=NONE
hi   Folded        ctermfg=95    ctermbg=235   cterm=NONE  guifg=#875f5f  guibg=#262626  gui=NONE
"hi  FoldColumn                                                                          
"hi  SignColumn                                                                              
"hi  IncSearch                                                                               
hi   LineNr        ctermfg=102   ctermbg=237  cterm=NONE       guifg=#878787  guibg=#3e3e3e  gui=NONE
hi   MatchParen    ctermfg=07    ctermbg=33   cterm=NONE       guifg=#c0c0c0  guibg=#0087ff  gui=NONE
hi   ModeMsg       ctermfg=NONE  cterm=NONE   cterm=NONE       guifg=NONE     guibg=NONE     gui=NONE
hi   MoreMsg       ctermfg=NONE  cterm=NONE   cterm=NONE       guifg=NONE     guibg=NONE     gui=NONE
hi   NonText       ctermfg=59    ctermbg=236  cterm=NONE       guifg=#5f5f5f  guibg=#303030  gui=NONE
hi   Normal        ctermfg=224   ctermbg=235  cterm=NONE       guifg=#ffdfdf  guibg=#262626  gui=NONE
hi   Pmenu         ctermfg=NONE  ctermbg=25   cterm=NONE       guifg=NONE     guibg=#005faf  gui=NONE
hi   PmenuSel      ctermfg=NONE  ctermbg=17   cterm=NONE       guifg=NONE     guibg=#00005f  gui=NONE
hi   PmenuSbar     ctermfg=NONE  ctermbg=16   cterm=NONE       guifg=NONE     guibg=#000000  gui=NONE
hi   PmenuThumb    ctermfg=NONE  ctermbg=17   cterm=NONE       guifg=NONE     guibg=#00005f  gui=NONE
"hi  Question                                                                                
hi   Search        ctermfg=253   ctermbg=28   cterm=NONE       guifg=#dadada  guibg=#008700  gui=NONE
hi   SpecialKey    ctermfg=59    ctermbg=237  cterm=NONE       guifg=#5f5f5f  guibg=#3a3a3a  gui=NONE
hi   SpellBad      ctermfg=253   ctermbg=130  cterm=underline  guifg=#dadada  guibg=#d70000  gui=underline
hi   SpellCap      ctermfg=253   ctermbg=133  cterm=underline  guifg=#dadada  guibg=#d700af  gui=underline
hi   SpellLocal    ctermfg=253   ctermbg=137  cterm=underline  guifg=#dadada  guibg=#d700ff  gui=underline
hi   SpellRare     ctermfg=253   ctermbg=139  cterm=underline  guifg=#dadada  guibg=#d75faf  gui=underline
hi   StatusLine    ctermfg=224   ctermbg=59   cterm=bold       guifg=#ffdfdf  guibg=#5f5f5f  gui=bold
hi   StatusLineNC  ctermfg=224   ctermbg=59   cterm=NONE       guifg=#ffdfdf  guibg=#5f5f5f  gui=NONE
"hi  TabLine                                                                                 
"hi  TabLineFil                                                                              
"hi  TabLineSel                                                                              
"hi  Title                                                                                   
hi   Visual        ctermfg=NONE  ctermbg=232  cterm=NONE       guifg=NONE     guibg=#080808  gui=NONE
hi   VisualNOS     ctermfg=NONE  ctermbg=232  cterm=NONE       guifg=NONE     guibg=#080808  gui=NONE
"hi  WarningMsg                                                                              
"hi  WildMenu                                                                                

" common for many languages                              
hi  Comment    ctermfg=95    ctermbg=NONE  cterm=NONE  guifg=#875f5f  guibg=NONE  gui=NONE
hi  Constant   ctermfg=NONE  ctermbg=NONE  cterm=NONE  guifg=NONE     guibg=NONE  gui=NONE
hi  String     ctermfg=178   ctermbg=NONE  cterm=NONE  guifg=#dfaf00  guibg=NONE  gui=NONE
hi  Character  ctermfg=167   ctermbg=NONE  cterm=NONE  guifg=#d75f5f  guibg=NONE  gui=NONE
hi  link       Number        String                                               
hi  link       Boolean       Character                                            
hi  link       Float         String                                               

hi  Identifier  ctermfg=73  ctermbg=NONE  cterm=NONE  guifg=#5fafaf  guibg=NONE  gui=NONE
hi  Function    ctermfg=73  ctermbg=NONE  cterm=NONE  guifg=#5fafaf  guibg=NONE  gui=NONE

hi   Statement    ctermfg=70  ctermbg=NONE  cterm=NONE  guifg=#5faf00  guibg=NONE  gui=NONE
"hi  Conditional                                                                   
"hi  Repeat                                                                        
"hi  Label                                                                         
"hi  Operator                                                                      
"hi  Keyword                                                                       
"hi  Exception                                                                     

hi   PreProc    ctermfg=172  ctermbg=NONE  cterm=NONE  guifg=#d78700  guibg=NONE  gui=NONE
"hi  Include                                                                      
hi   Define     ctermfg=167  ctermbg=NONE  cterm=NONE  guifg=#d75f5f  guibg=NONE  gui=NONE
"hi  Macro                                                                        
"hi  PreCondit                                                                    

hi   Type            ctermfg=73    ctermbg=NONE  cterm=NONE    guifg=#5fafaf  guibg=NONE     gui=NONE
hi   StorageClass    ctermfg=70    ctermbg=NONE  cterm=italic  guifg=#5faf00  guibg=NONE     gui=italic
hi   link            Structure     StorageClass                                              
hi   link            Typedef       StorageClass                                              

hi   Special         ctermfg=67    ctermbg=NONE  cterm=NONE    guifg=#5f87af  guibg=NONE     gui=NONE
"hi  SpecialChar                                                                             
"hi  Tag                                                                                     
"hi  Delimiter                                                                               
"hi  SpecialComment                                                                          
"hi  Debug                                                                                   
"
"hi  Underlined                                                                              
hi   Error           ctermfg=NONE  ctermbg=160   cterm=NONE    guifg=NONE     guibg=#d70000  gui=NONE
hi   Todo            ctermfg=201   ctermbg=NONE  cterm=NONE    guifg=#ff00ff  guibg=NONE     gui=NONE
