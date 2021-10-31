let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'i': '~/Wandofiles/i3/.config/i3/config' },
            \ { 'n': '~/Wandofiles/nvim/.config/nvim/init.vim' },
            \ { 'z': '~/Wandofiles/zsh/.config/zsh/.zshrc' },
            \ { 's': '~/Projects/StockCount' },
            \ { 'm': '~/Projects/r365cleaner' },
            \ { 'r': '~/Projects/RecipeLink' },
            \ ]

let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0
let g:startify_fortune_use_unicode = 1
