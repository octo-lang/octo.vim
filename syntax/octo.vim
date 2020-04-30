" Vim syntax file
"   Language: octo
" Maintainer: @Yul3n
"    Credits: @Yul3n

" Comments
syntax match octoLineComment "\-\-.*$"

" Keywords
syntax keyword octoKeyword case of where when type char list float bool 

" Numbers
syntax match octoNumber "[\+\-]?[0-9]*"

" Strings
syntax match octoString "\"[^\"]*\""
syntax match octoChar   "'[\\]?.'"

" Types
syntax match octoType "[A-Z][a-zA-Z_']*"

" Operators
syntax match octoOperator "@\|::\|=\|+\|-\|/\|\*"

" Functions 
syntax keyword octoBuiltinFun map or and xor not if 

" Declarations
syntax match octoIdent "[a-z][A-Za-z' _,]*"  
syntax region octoDecl start="[a-z][A-Za-z'_,]*" end="=" contains=octoIdent

" Set highlights 
highlight default link octoLineComment Comment
highlight default link octoKeyword Keyword
highlight default link octoNumber Number
highlight default link octoString String
highlight default link octoChar String
highlight default link octoType Type
highlight default link octoType Identifier 
highlight default link octoBuiltinFun Function
