let g:vim_rails_recent_model = []
let g:vim_rails_recent_view = []
let g:vim_rails_recent_controller = []
let g:vim_rails_recent_depth = 5
augroup rails_cycle
  autocmd!
  autocmd BufEnter *app/models/* let g:vim_rails_recent_model = VimRailsRecentStore(g:vim_rails_recent_model)
  autocmd BufEnter *app/controllers/* let g:vim_rails_recent_controller = VimRailsRecentStore(g:vim_rails_recent_controller)
  autocmd BufEnter *app/views/* let g:vim_rails_recent_view = VimRailsRecentStore(g:vim_rails_recent_view)
augroup END

function! VimRailsRecentStore(buffer_list)
  let tmp_list = a:buffer_list
  let last_element_index = g:vim_rails_recent_depth - 2
  if index(tmp_list, @%) == -1
    let tmp_list = tmp_list[0:last_element_index] + [@%]
    return tmp_list
  else
    return a:buffer_list
  endif
endfunction

function! VimRailsRecentEditCycle(buffer_list)
  let tmp_list = a:buffer_list
  execute 'edit' tmp_list[-1]
  return tmp_list[1:-1] + tmp_list[0:0]
endfunction
