" MatchUp
augroup matchup_matchparen_highlight
  autocmd!
  autocmd ColorScheme * hi MatchWord cterm=underline gui=underline
  autocmd ColorScheme * hi MatchWord cterm=underline gui=underline
  autocmd ColorScheme * hi MatchWordCur cterm=underline gui=underline
augroup END

" For ColorScheme --
  " For line number --
  autocmd ColorScheme * hi cursorlinenr guifg=#ffa600
  autocmd ColorScheme * hi LineNr guifg=#666699

" For automatically changing directory
  autocmd BufEnter * silent! :lcd%:p:h

" For Undo-tree
  if has("persistent_undo")
   let target_path = expand('~/.config/.undodir')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif
