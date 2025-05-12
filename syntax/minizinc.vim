" Vim syntax file
" Language: MiniZinc
" Maintainer: Your Name
" Latest Revision: Date

if exists("b:current_syntax")
  finish
endif

" Keywords
syntax keyword mznKeywords constraint solve minimize maximize include predicate
syntax keyword mznKeywords var let of
syntax keyword mznKeywords forall exists if then else endif
syntax keyword mznControlFlow in where
highlight link mznKeywords Keyword
highlight link mznControlFlow Conditional

" Types
syntax keyword mznTypes int bool float string array set enum
highlight link mznTypes Type

" Boolean values
syntax keyword mznBoolean true false
highlight link mznBoolean Boolean

" Built-in Functions
syntax keyword mznFunctions abs arg_max arg_min count max min pow product sqrt sum
syntax keyword mznFunctions exp ln log log10 log2
syntax keyword mznFunctions acos acosh asin asinh atan atanh cos cosh sin sinh tan tanh
syntax keyword mznFunctions bool2float bool2int ceil enum2int floor index2int int2float round set2array
syntax keyword mznFunctions array1d array2d array3d array4d array5d array6d arrayXd
syntax keyword mznFunctions col row length reverse slice_1d slice_2d slice_3d slice_4d slice_5d slice_6d
syntax keyword mznFunctions card
syntax keyword mznFunctions concat format join show show2d show3d showJSON show_float show_int
syntax keyword mznFunctions enum_next enum_prev enum_of to_enum
syntax keyword mznFunctions arg_sort sort sort_by
syntax keyword mznFunctions fix dom dom_array dom_size lb ub
syntax keyword mznFunctions assert trace debug_mode
syntax keyword mznFunctions bernoulli normal uniform
highlight link mznFunctions Function

" Annotations
syntax keyword mznAnnotations add_to_output output output_array output_var
syntax keyword mznAnnotations bounds domain promise_total var_is_introduced
syntax keyword mznAnnotations first_fail input_order largest smallest
syntax keyword mznAnnotations indomain indomain_min indomain_max
syntax keyword mznAnnotations complete seq_search
syntax keyword mznAnnotations warm_start symmetry_breaking_constraint
highlight link mznAnnotations PreProc

" Numbers
syntax match mznNumber "\<\d\+\>"
syntax match mznNumber "\<\d\+\.\d*\>"
highlight link mznNumber Number

" Operators
syntax match mznOperator "+"
syntax match mznOperator "-"
syntax match mznOperator "\*"
syntax match mznOperator "/"
syntax match mznOperator "="
syntax match mznOperator "!="
syntax match mznOperator "<="
syntax match mznOperator ">="
syntax match mznOperator "<"
syntax match mznOperator ">"
syntax match mznOperator "\\\/"
syntax match mznOperator "/\\"
syntax match mznOperator "->"
syntax match mznOperator "<-"
syntax match mznOperator "<->"
syntax match mznOperator "\.\."
syntax match mznOperator "\.\.<"
syntax match mznOperator "<\.\."
syntax match mznOperator "<\.\.<"
syntax match mznOperator ":"
syntax match mznOperator "^"
syntax keyword mznOperator div mod xor not union diff intersect subset superset symdiff
highlight link mznOperator Operator

" Comments
syntax match mznComment "%.*$"
highlight link mznComment Comment

" Strings
syntax region mznString start=/"/ skip=/\\"/ end=/"/
highlight link mznString String

" Special characters
syntax match mznSpecial ";"
syntax match mznSpecial ","
highlight link mznSpecial Special

" Brackets and parentheses
syntax match mznBracket "[[\](){}]"
highlight link mznBracket Delimiter

let b:current_syntax = "minizinc"
