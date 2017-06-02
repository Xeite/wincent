" Leader mappings.

" <Leader><Leader> -- Open last buffer.
nnoremap <Leader><Leader> <C-^>

nnoremap <Leader>o :only<CR>

" <Leader>p -- Show the path of the current file (mnemonic: path; useful when
" you have a lot of splits and the status line gets truncated).
nnoremap <Leader>p :echo expand('%')<CR>

" <Leader>pp -- Like <Leader>p, but additionally yanks the filename and sends it
" off to Clipper.
nnoremap <Leader>pp :let @0=expand('%') <Bar> :Clip<CR> :echo expand('%')<CR>

nnoremap <Leader>q :quit<CR>

" <Leader>r -- Cycle through relativenumber + number, number (only), and no
" numbering (mnemonic: relative).
nnoremap <silent> <Leader>r :call mappings#leader#cycle_numbering()<CR>

nnoremap <Leader>w :write<CR>
nnoremap <Leader>x :xit<CR>

" <Leader>zz -- Zap trailing whitespace in the current buffer.
"
"        As this one is somewhat destructive and relatively close to the
"        oft-used <leader>a mapping, make this one a double key-stroke.
"nnoremap <silent> <Leader>zz :call mappings#leader#zap()<CR>

" <LocalLeader>c -- Fix (most) syntax highlighting problems in current buffer
" (mnemonic: coloring).
nnoremap <silent> <LocalLeader>c :syntax sync fromstart<CR>

nnoremap <silent> <LocalLeader>d :OpenInDiffusion<CR>
nnoremap <silent> <LocalLeader>s :Search<CR>

" <LocalLeader>e -- Edit file, starting in same directory as current file.
nnoremap <LocalLeader>e :edit <C-R>=expand('%:p:h') . '/'<CR>

" <LocalLeader>x -- Turn references to the word under the cursor to references
" to the WORD under the cursor:
"
" eg. if the cursor is on the first "w":
"
"     [@wincent](https://github.com/wincent)
"
" Can be used to turn all references to "wincent" into links to "@wincent".
"
" (mnemonic: e[X]tract handle)
nnoremap <LocalLeader>x :%s#\v<C-r><c-w>#<C-r><C-a>#gc<CR>

" Fugitive
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gL :execute ':!cd ' . expand('%:p:h') . '; git la'<CR>
nnoremap <Leader>gl :execute ':!cd ' . expand('%:p:h') . '; git las'<CR>
nnoremap <Leader>gh :Silent Glog<CR>
nnoremap <Leader>gH :Silent Glog<CR>:set nofoldenable<CR>
nnoremap <Leader>gr :Gread<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gp :Git push<CR>
nnoremap <Leader>g- :Silent Git stash<CR>:e<CR>
nnoremap <Leader>g+ :Silent Git stash pop<CR>:e<CR>

" Buffer switching
nnoremap <Leader>x :bn!<CR>      
nnoremap <Leader>z :bp!<CR>      
"nnoremap <Leader>w :bw<CR>       
nnoremap <Leader>1 :b!1<CR>      
nnoremap <Leader>2 :b!2<CR>      
nnoremap <Leader>3 :b!3<CR>      
nnoremap <Leader>4 :b!4<CR>      
nnoremap <Leader>5 :b!5<CR>      
nnoremap <Leader>6 :b!6<CR>      
nnoremap <Leader>7 :b!7<CR>      
nnoremap <Leader>8 :b!8<CR>      
nnoremap <Leader>9 :b!9<CR>      
nnoremap <Leader>0 :b!0<CR>      

