" Vim syntax file
" Language:         Generic log files

" Based on messages.vim - syntax file for highlighting kernel messages

if exists("b:current_syntax")
    finish
endif


syn sync fromstart
syn match log_all    '^.*\s.*\[.*\]\s(.\{-})' contains=log_class,log_thread,log_date,log_time
syn match log_class '\[.\{-}\]' contained
syn match log_thread    '(.\{-})' contained
syn match log_date '\d\{4}-\d\d-\d\d' contained
syn match log_time '\d\d:\d\d:\d\d,\d\d\d' contained
syn match log_error     '\<\(FATAL\|ERROR\|ERRORS\|FAIL\|FAILED\|FAILURE\)' containedin=log_all
syn match log_warning   '\<\(WARNING\|WARN\)' containedin=log_all
syn match log_info      '\<\(INFO\)' containedin=log_all
syn match log_debug     '\<\(DEBUG\|TRACE\)' containedin=log_all
syn match log_stack     '^\tat .*\<\(forte\|e2go\|percipenz\).*$'

hi def link log_string  String
hi def link log_date    Number
hi def link log_time    Number
hi def link log_error   WarningMsg
hi def link log_warning PreProc
hi def link log_info    Label
hi def link log_debug   Label
hi def link log_class   Function
hi def link log_thread  Underlined
hi def link log_stack   Type


let b:current_syntax = "log"
