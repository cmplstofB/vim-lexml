" Vim syntax file
" Language:    LeXML
" Maintainer:  cmplstofB <https://github.com/cmplstofB/>
" Version:     0.1.0
" Last Change: 2019-09-04 | Modify for public.
"              2019-06-09 | Initial version.
" References:
"   [1] http://www.d-assist.com/lexml303.dtd

if exists("b:current_syntax")
	finish
endif

doautocmd Syntax xml
syntax spell toplevel
syntax cluster	xmlTagHook add=lexmlTagName

" Tag [1]
syntax keyword	lexmlTagName contained
			\ b B br BR em EM i I
			\ nobr span
			\ sub SUB sup SUP u U
			\ ruby a img big small
syntax keyword	lexmlTagName contained
			\ alabel glabel slabel
			\ pos POS
			\ hinshi
			\ gender GENDER
			\ pron hatsuon
			\ svoc SVOC bunkei
			\ ref REF xref XREF
			\ inflec
			\ lang
			\ spellout
			\ variant
			\ hidden HIDDEN
			\ light
			\ sc
			\ oblq
			\ audio video note url
			\ accent
			\ ex
			\ etym
			\ ymd
			\ article
			\ ud
			\ hs
			\ pha ipa pinyin
			\ cn jp kr tw
			\ ggk kigo
			\ mlg
			\ gi
			\ fbox FBOX
			\ pro-n pro-v pro-nv
			\ abbr fullform
syntax match	lexmlTagName contained
			\ /\<dic\%(-\(body\|item\)\)\=\>/
syntax keyword	lexmlTagName contained split
syntax keyword	lexmlTagName contained head
syntax keyword	lexmlTagName contained headword key
syntax keyword	lexmlTagName contained
			\ meaning
			\ example
			\ subhead subheadword
			\ index title
			\ column
			\ div p
			\ image audio video
			\ table
			\ replace
			\ ul dl
			\ memo data

" Character entity reference
"   http://www.d-assist.com/lexmlentity.pdf
syntax match	lexmlEntitiy /&#\?[0-9A-Za-z]\{1,20};/
let s:lexmlEntities = {
			\         'whsumipl':	'〖', 'whsumipr':	'〗',
			\         'whkamepl':	'〘', 'whkamepr':	'〙',
			\         'wc_kan1':	'㊀',
			\         'wc_kan2':	'㊁',
			\         'wc_kan3':	'㊂',
			\         'wc_kan4':	'㊃',
			\         'wc_kan5':	'㊄',
			\         'wc_kan6':	'㊅',
			\         'wc_kan7':	'㊆',
			\         'wc_kan8':	'㊇',
			\         'wc_kan9':	'㊈',
			\         'wc_kan10':	'㊉',
			\         'lxHoho':	'頰',
			\         'lxUso':	'噓',
			\         'lxNomu':	'吞',
			\         'lxTsukamu':	'摑',
			\         'lxHashigoTaka':	'髙',
			\         'lxShinaKamome':	'鷗',
			\         'lxTou':	'鄧',
			\         'lxRou':	'﨟',
			\         'yubisashi':	'☞'
			\         }
if has("conceal") && &enc == 'utf-8'
	for s:lexmlEntitiy in keys(s:lexmlEntities)
		execute 'syntax match lexmlEntitiy '
					\ . '/&' . s:lexmlEntitiy . ';/ '
					\ . 'conceal cchar='
					\ . s:lexmlEntities[s:lexmlEntitiy]
	endfor
endif

highlight default link lexmlTagName	Statement
highlight default link lexmlEntitiy	Special

let b:current_syntax = "lexml"
