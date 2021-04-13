"去掉vi的一致性"
set nocompatible

" 侦测文件类型  
filetype on

"显示行号"
set number

" 语法高亮  
"syntax=on
if &t_Co > 1
    syntax enable
endif

" 去掉输入错误的提示声音  
set noeb

" 自动缩进  
set autoindent
set cindent
set smartindent

"reset tab"
set ts=4
set expandtab
%retab!
set backspace=indent,eol,start

" 我的状态行显示的内容（包括文件类型和解码
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" 在编辑过程中，在右下角显示光标位置的状态行  
set ruler

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'
Plugin 'suan/vim-instant-markdown'
Plugin 'Lokaltog/vim-powerline'
"Plugin 'ycm-core/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required
execute pathogen#infect()
call pathogen#helptags()
map <F2> :NERDTreeToggle<CR>


"按F5运行python"
map <F5> :w<CR> :!python %<CR>

" taglist
let Tlist_Auto_Open=1 " Let the tag list open automatically
let Tlist_Auto_Update=1 " Update the tag list automatically
let Tlist_Compact_Format=1 " Hide help menu
let Tlist_Ctags_Cmd='ctags' " Location of ctags
let Tlist_Enable_Fold_Column=0 "do show folding tree
let Tlist_Process_File_Always=1 " Always process the source file
let Tlist_Show_One_File=1 " Only show the tag list of current file
let Tlist_Exist_OnlyWindow=1 " If you are the last, kill yourself
let Tlist_File_Fold_Auto_Close=0 " Fold closed other trees
let Tlist_Sort_Type="name" " Order by name
let Tlist_WinWidth=30 " Set the window 40 cols wide.
let Tlist_Close_On_Select=1 " Close the list when a item is selected
let Tlist_Use_SingleClick=1 "Go To Target By SingleClick
let Tlist_Use_Right_Window=1 "在右侧显示
map <F3> :Tlist<CR>

" super tab
let g:SuperTabDefaultCompletionType="context"
