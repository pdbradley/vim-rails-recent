This plugin keeps track of your most recently opened models, views, and controllers.

You can bind keys to cycle through them.

NO default mappings for cycling through recent files are set. You have to do that yourself in your .vimrc

Even though Ctrl-M, Ctrl-C, and Ctrl-V are "taken", I found it more expedient to map them to cycle through the recent models, controllers, and views, respectively.

You will need to choose your OWN bindings and put these lines in your .vimrc, or copy these if you like them.

This plugin WILL NOT WORK unless you use or modify these three lines below in your vimrc!

```
:nnoremap <C-m> :let g:vim_rails_recent_model = VimRailsRecentEditCycle(g:vim_rails_recent_model)<cr>
:nnoremap <C-c> :let g:vim_rails_recent_controller = VimRailsRecentEditCycle(g:vim_rails_recent_controller)<cr>
:nnoremap <C-v> :let g:vim_rails_recent_view = VimRailsRecentEditCycle(g:vim_rails_recent_view)<cr>
```


This setting, which defaults to 5, will limit how many "recents" of any filetype are stored at once
```
let g:vim_rails_recent_depth = 5
```
