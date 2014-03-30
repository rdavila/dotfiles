if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  macmenu &File.Print key=<nop>
  macmenu &File.New\ Window key=<nop>
  map <D-p> :CtrlP<CR>
  map <D-t> :CtrlPTag<CR>
  map <D-n> :NERDTreeToggle<CR>
endif
