!-- https://gist.github.com/subfuzion/7d00a6c919eeffaf6d3dbf9a4eb11d64       -->
<!-- https://kipalog.com/posts/Di-cu-tu-Sublime-Text-sang-VIM         -->
# exit nvim
ZZ ---------------  exit and save 
ZQ ---------------  Force exit ( without save )

# Moving around
zt ---------------  set cursor at top of screen
zz ---------------  set cursor at mid of screen
zb ---------------  set cursor at bot of screen

gg ---------------  goto begin of file
G  ---------------  goto end of file

$ ----------------  goto end of line
0 (number 0) -----  goto begin of line

# Delete
D or d$ ---------- delete from cursor to the end of line


daw
diw
da(
di(
dap

# undo and redo

u ----------------  undo 1 change
ctrl+r -----------  redo 1 change

U ----------------  undo all change
ctrl+R -----------  redo all change

:earlier 5m ------  go back to 5min ago
:later 5m --------  go to 5min 

# Search and replace
  nnoremap S :%s//g<Left><Left>









<leader> ở đây là , (dấu phẩy)

<leader>  ------- :     

<leader>t   ------- :UndotreeToggle     
<leader>n   ------- :NERDTreeFocus     
<leader>f   ------- :NERDTreeFind

<leader>ev  ------- :edit init.vim      
<leader>rv  ------- :reload init.vim        

F5          ------- :UndotreeToggle     
F8          ------- :TagbarToggle    sudo apt-get install exuberant-ctags  https://jdhao.github.io/2019/10/15/tagbar_markdown_setup


<!--  -->


o           thêm 1 hàng bên dưới con trỏ và ở Insert mode       
O           thêm 1 hàng bên trên con trỏ và ở Insert mode      


u           undo last change
Ctrl-r      redo changes


## Copy, cut and paste 
<!--  More Info https://vim.fandom.com/wiki/Copy,_cut_and_paste     -->


step1:  
    v           Select character  
    V           Select whole line  
step2:  
    d           Cut  
    y           Copy  
step3:  
    p           Paste after cursor  
    P           Paste before cursor  
    o           wtf











<!--  -->
