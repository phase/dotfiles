" Highlight characters that go outside 72 characters
highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%73v', 100)

" Map ; to : because ; is useless
nnoremap ; :

" Allow cursor keys in insert mode
set esckeys
