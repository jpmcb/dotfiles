nnoremap <Leader>f :Files<CR>
nnoremap <C-f> :BLines<CR>
nnoremap <Leader>ag :Ag<CR>
nnoremap <Leader>rg :Rg<CR>

" Make Ag not include the filename in searches
" https://github.com/junegunn/fzf.vim/issues/346
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

