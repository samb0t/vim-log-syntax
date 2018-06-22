" Vim syntax file
" Language:         Generic log files

" Based on messages.vim - syntax file for highlighting kernel messages

if exists("b:current_syntax")
    finish
endif

syn match log_error     '\<\(FATAL\|ERROR\|ERRORS\|FAIL\|FAILED\|FAILURE\)'
syn match log_warning   '\<\(WARNING\|WARN\|DELETE\|DELETING\|DELETED\|RETRY\|RETRYING\)'
syn match log_info      '\<\(INFO\)'
syn match log_debug     '\<\(DEBUG\|TRACE\)'
syn match log_thread    '(.\{-})'
syn match log_number    '0x[0-9a-fA-F]*\|\[<[0-9a-f]\+>\]\|\<\d[0-9a-fA-F]*'

syn match log_date '\d\{4}-\d\d-\d\d'
syn match log_time '\d\d:\d\d:\d\d,\d\d\d'
syn match log_class '\[.\{-}\]'

hi def link log_string  String
hi def link log_number  Number
hi def link log_date    Type
hi def link log_time    Type
hi def link log_error   WarningMsg
hi def link log_warning PreProc
hi def link log_info    Function
hi def link log_debug   Label
hi def link log_class   Function
hi def link log_thread  Underlined


let b:current_syntax = "log"
