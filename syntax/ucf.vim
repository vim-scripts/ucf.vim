" Vim syntax file
" Language:	ucf - Xilinx User Constraints File
" Version:      1.0
" Author:       Russell Brinkmann

" Remove any old syntax stuff hanging around
syn clear
" ucf syntax is not case sensitive?
" syn case match

syn keyword	ucfTodo		contained TODO TBD
syn match	ucfComment	"#.*" contains=ucfTodo
syn match	ucfComment	"^\s*\zs#.*$"	contains=ucfTodo
syn match	ucfComment	"\s\zs#.*$"	contains=ucfTodo
"syn match	confComment	"\s#.*"ms=s+1 contains=ucfTodo

" A bunch of useful ucf keywords
syn keyword ucfIdentifier   NET TIMESPEC PERIOD MHz HIGH LOW TIMEGRP BEFORE
syn keyword ucfIdentifier   LOC CONFIG PROHIBIT TNM FROM TO AFTER OFFSET IN OUT
syn keyword ucfIdentifier   TPSYNC FALLING RISING FALL RISE THRU IOSTANDARD 
syn keyword ucfIdentifier   DRIVE SLEW ROUTE INST PIN BLKNM DISABLE ENABLE
syn keyword ucfIdentifier   ENABLE_SUSPEND FEEDBACK FILE FLOAT HBLKNM HLUTNM HU_SET
syn keyword ucfIdentifier   INREG IFD_DELAY_VALUE IBUF_DELAY_VALUE INREG IOBDELAY
syn keyword ucfIdentifier   KEEP IOB DCI_CASCADE DCI_VALUE DROP_SPEC
syn keyword ucfIdentifier   KEEPER KEEP_HEIRARCHY LOCATE LOC_PINS LUTNM MAP
syn keyword ucfIdentifier   MAXDELAY MAXPT MAXSKEW NODELAY NOREDUCE OPEN_DRAIN
syn keyword ucfIdentifier   OPT_EFFORT PWR_MODE REG FFS RLOC RLOC_ORIGIN RLOG_RANGE
syn keyword ucfIdentifier   TIG TNM_NET TPTHRU

syn keyword ucfConstant     SLOW FAST 
syn keyword ucfConstant     LVTTL LVCMOS2 X25TO18 LVDS
syn keyword ucfStatement    PULLDOWN PULLUP TRUE FALSE

syn region ucfString	start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline
syn region ucfString	start=+'+ skip=+\\\\\|\\'+ end=+'+ oneline

syn match ucfNumber "-\=\<\d\+\.\d\+\(E[+\-]\=\d\+\)\>"
syn match ucfNumber "-\=\<\d\+\.\d\+\>"
syn match ucfNumber "\<\d\+\>"

hi def link ucfStatement		Statement
hi def link ucfIdentifier		Identifier
hi def link ucfConstant		Constant
hi def link ucfComment		Comment
hi def link ucfString		String
hi def link ucfNumber		Number
hi def link ucfTodo		Todo

let b:current_syntax = "ucf"

" vim: ts=8

