" Vim syntax file
"   Language: octo
" Maintainer: @Yul3n
"    Credits: @Yul3n

" Comments

syntax match octoLineComment "\v--.*$"
syntax match octoLineComment "\v#.*$"
" Keywords
syntax keyword octoKeyword case of where when type char list float bool 

" Numbers
" syntax match octoNumber "[\+-]?[0-9]*"

" Strings
syntax match octoString "\"[^\"]*\""
syntax match octoChar   "'[\\]?.'"

" Types
syntax match octoType "[A-Z][a-zA-Z_']*"


" Functions 
syntax keyword octoBuiltinFun map or and xor not if 

" Declarations


syntax match octoIdent "[a-z][a-zA-Z_']*" contained 
syntax region octoDecl start="" end="\v\=$" contains=octoIdent oneline

" Set highlights 
highlight link octoLineComment Comment
highlight link octoKeyword Keyword
highlight link octoNumber Number
highlight link octoString String
highlight link octoChar String
highlight link octoType Type
highlight link octoFun Function
highlight link octoIdent Identifier 
highlight link octoBuiltinFun Function
