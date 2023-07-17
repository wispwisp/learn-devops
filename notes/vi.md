# Shortcuts:

## basics:
`:wq` write file and quit

`:w` write file

`:q!` force quit

`:q` quit

`r<symbol>` replace character

ex: `ri` replace character under cursor to i

`w` one word futher

`b` one word backward

`dw` delete word

`dd` delete string

`cc` delete string and enter edit mode

`2dw` delete two words

`0` begin of a line

`$` end of a line

`%` jump to closing

`dt(` delete all until '('. Use any symbol

`dt"`, `dt)`, `dt;`

`gg` being of a file

`G` end of a file

`<<` / `>>` indent line or selected in visual mode

`zz` center file

`.` repeat last command


## bash
`:!ls` execure bash command


## others
`:set number` show line numbers

press number and action - repeates that n-times
`5j` goes up five times

`set mouse=a` use mouse

`set mouse=i` dont use mouse

`:reg` what saved


## visual mode
press `v`

* `d` delete
* `y` copy
* `p` paste
* `4p` insert for times

press `ctrl+v`
enters a block visual mode


## search

`/word-to-search`
* `n` - next
* `N` - prev

`#` - prev search under cursor

`*` - next search under cursor

`:%s/what-change/to-change/g` change globaly in file

`:s/w/t/g` change slected in visual mode


## macro

`qa` start recording to macros 'a'

do commands...

`q` quit recording

`@a` use macro

any symbol can be used:

`q<symbol>`

`q`

`@<symbol>`
