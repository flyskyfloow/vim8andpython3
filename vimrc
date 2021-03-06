" 调整xshell的光标适应书写
" http://www.xshellcn.com/wenti/xhu-sgbh.html
set nocompatible              " required
set autoindent
set tabstop=4
filetype off                  " required
" 打开鼠标可复制
set mouse=v
" 设置突出显示当前行
set cursorline  
"设置Vundle的运行路径
set rtp+=/opt/vim8/bundle/Vundle.vim
"设置插件的安装路径,vundle插件起始标志
call vundle#begin('/opt/vim8/bundle')
"让vundle管理插件版本
Plugin 'VundleVim/Vundle.vim'
"添加nerdtree插件
Plugin 'scrooloose/nerdtree'
"使用tab键切换窗口与目录树
Plugin 'jistr/vim-nerdtree-tabs'
"添加jedi-vim代码补全插件
"Plugin 'davidhalter/jedi-vim'
Plugin 'Valloric/YouCompleteMe'
"python语法检测
Plugin 'scrooloose/syntastic'
"添加PEP8代码风格检查
Plugin 'nvie/vim-flake8'
"配色方案
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
"代码折叠插件
Plugin 'tmhedberg/SimpylFold'
"自动缩进
Plugin 'vim-scripts/indentpython.vim'
"在vim的normal模式下搜索文件
Plugin 'kien/ctrlp.vim'
"Powerline状态栏
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"你的所有插件需要在下面这行之前
"缩进指示线
Plugin 'Yggdroot/indentLine'
"自动依照pep8的标准自动格式化代码
Plugin 'tell-k/vim-autopep8'
call vundle#end() 

"设置分割窗口
"set splitbelow
"set splitright
"设置窗口移动快捷键
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

"设置按F2启动NerdTree
map <F2> :NERDTreeToggle<CR>
map    w-  :vertical resize -5<CR>
map <F5> :w<CR>:!python %<CR>
"youcompleteme  默认tab  s-tab 和自动补全冲突
""let g:ycm_key_list_select_completion=['<c-n>']
"let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
"let g:ycm_key_list_previous_completion = ['<Up>']
"关闭加载.ycm_extra_conf.py提示
let g:ycm_confirm_extra_conf=0 
" 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files=1 
" 从第2个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=2 
" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0  
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1
"force recomile with syntastic
"nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>    
"nnoremap <leader>lo :lopen<CR> "open locationlist
"nnoremap <leader>lc :lclose<CR>    "close locationlist
inoremap <leader><leader> <C-x><C-o>
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

"隐藏目录树种的.pyc文件
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"设置主题颜色，以及设置快捷键F5
"if has('gui_running')
"  set background=dark
"  colorscheme solarized
"else
"  colorscheme zenburn
"endif
"call togglebg#map("<F3>")

"开启代码折叠
set foldmethod=indent
set foldlevel=99
"设置快捷键为空格
noremap <space> za
"显示折叠代码的文档字符串
let g:SimpylFold_docstring_preview=1

"python代码缩进PEP8风格
au BufNewFile,BufRead *.py,*.pyw set tabstop=4 
au BufNewFile,BufRead *.py,*.pyw set softtabstop=4 
au BufNewFile,BufRead *.py,*.pyw set shiftwidth=4 
au BufNewFile,BufRead *.py,*.pyw set textwidth=79 
au BufNewFile,BufRead *.py,*.pyw set expandtab 
au BufNewFile,BufRead *.py,*.pyw set autoindent 
au BufNewFile,BufRead *.py,*.pyw set fileformat=unix

"对其他文件类型设置au命令
au BufNewFile,BufRead *.js, *.html, *.css set tabstop=2
au BufNewFile,BufRead *.js, *.html, *.css set softtabstop=2
au BufNewFile,BufRead *.js, *.html, *.css set shiftwidth=2

"高亮显示行伟不必要的空白字符
highlight Whitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match Whitespace /\s\+$\ \+/

"设置行号显示
set nu

"设置utf-8编码
set encoding=utf-8

let python_highlight_all=1
syntax on

filetype plugin indent on
