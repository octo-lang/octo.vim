" Vim syntax file
"   Language: octo
" Maintainer: @Yul3n
"    Credits: @Yul3n

" Declarations
syntax match octoIdent "[a-z][a-zA-Z_' ]*" contained 
syntax match octoFun   "^[a-z][a-zA-Z_']*" contained 
syntax region octoDecl start="" end="\v\=$" contains=octoFun,octoIdent oneline


" Keywords
syntax keyword octoKeyword case of where when type char list float bool 

" Numbers
syntax match octoNumber "[\+-]?[0-9]*"

" Strings
syntax match octoString "\"[^\"]*\""
syntax match octoChar   "'\v[\\]?.'"

" Types
syntax match octoType "[A-Z][a-zA-Z_']*"

" Functions 
syntax keyword octoBuiltinFun map or and xor not if 

" Comments
syntax match octoLineComment "\v--.*$"

" Set highlights 
highlight link octoLineComment Comment
highlight link octoKeyword Keyword
highlight link octoNumber Number
highlight link octoString String
highlight link octoChar Character 
highlight link octoType Type
highlight link octoFun Function
highlight link octoIdent Identifier 
highlight link octoBuiltinFun Function
