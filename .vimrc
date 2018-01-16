" Highlight characters that go outside 72 characters
highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%73v', 100)

" Try the following if your GUI uses a dark background.
highlight ExtraWhitespace ctermbg=red
match ExtraWhitespace /\s\+$/

" Map ; to : because ; is useless
nnoremap ; :

" Add line numbers
set number

set mouse=a

