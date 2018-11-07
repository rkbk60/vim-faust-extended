" Faust syntax file
" Language: faust
" Original: bjoern lindig <kebjoern@yahoo.de>
" Maintainer: rkbk60 <b8csmlplg@gmail.com>
" Version: 0.1
" LastChange: 2018-11-11

if exists("b:current_syntax")
    finish
endif

syn clear

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" faust primitives
syn keyword fstPrimitive int float acos asin atan atan2 cos sin tan
syn keyword fstPrimitive exp log log10 pow sqrt abs min max fmod remainder floor ceil rint
syn keyword fstPrimitive xor mem rdtable rwtable select2 select3
syn match   fstPrimitive "_"
syn match   fstPrimitive "!"
syn match   fstPrimitive "+"
syn match   fstPrimitive "-"
syn match   fstPrimitive "*"
syn match   fstPrimitive "/"
syn match   fstPrimitive "\^"
syn match   fstPrimitive "%"
syn match   fstPrimitive "<"
syn match   fstPrimitive ">"
syn match   fstPrimitive ">="
syn match   fstPrimitive "<="
syn match   fstPrimitive "!="
syn match   fstPrimitive "=="
syn match   fstPrimitive "&"
syn match   fstPrimitive "|"
syn match   fstPrimitive "<<"
syn match   fstPrimitive ">>"
syn match   fstPrimitive "@"
syn match   fstPrimitive "'"

syn keyword fstDataPrimitive waveform soundfile

syn keyword fstUIPrimitive button checkbox vslider hslider nentry vgroup hgroup tgroup vbargraph hbargraph attach

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" faust expression words/operators
syn keyword fstExpression process inputs outputs import declare
syn keyword fstExpression seq par sum prod
syn keyword fstExpression case with letrec
syn keyword fstExpression ffunction fconstant fvariable
syn match   fstExpression ","
syn match   fstExpression ":"
syn match   fstExpression "<:"
syn match   fstExpression ":>"
syn match   fstExpression "\~"

syn keyword fstPrimitiveExpression environment library component

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" faust number
syn match fstNumber "\<[+-]\?\d\+\(\.\d\+\(e[+-]\?\d\+\)\=\)\=\>"
syn match fstNumber "\<[+-]\?\.\d\+\(e[+-]\?\d\+\)\=\>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" faust comments
syn match  fstComment "//.*$"
syn region fstComment start="/\*" end="\*/" contains=fstOperator keepend extend

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" String
syn region fstString start=+"+ skip=+\\\\\|\\"+ end=+"+

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color definition
hi link fstInclude                Include
hi link fstPrimitive              Function
hi link fstDataPrimitive          fstInclude
hi link fstUIPrimitive            Identifier
hi link fstExpression             Statement
hi link fstPrimitiveExpression    fstInclude
hi link fstNumber                 Number
hi link fstComment                Comment
hi link fstString                 String

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The name of the syntax is faust
let b:current_syntax = "faust"
