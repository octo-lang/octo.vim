" Vim syntax file
"   Language: octo
" Maintainer: @Yul3n
"    Credits: @Yul3n

" Comments
syntax match octoLineComment "\/\/.*"

" Keywords
syntax keyword octoKeyword case of where when type char list float bool 

" Numbers
syntax match octoNumber "[\+\-]?[0-9]*"

" Strings
syntax match octoString "\".*\""

" Types
syntax match octoType "[A-Z][a-zA-Z_']*"

" Set highlights 
highlight default link octoLineComment Comment
highlight default link octoKeyword Keyword
highlight default link octoNumber Number
highlight default link octoString String
highlight default link octoType Type
