func! utility#Filename(...)
	let template = get(a:000, 0, "$1")
	let arg2 = get(a:000, 1, "")

	let basename = expand('%:t:r')

	if basename == ''
		return arg2
	else
		return substitute(template, '$1', basename, 'g')
	endif
endfunc

func! utility#FileGuard(...)
	let template = get(a:000, 0, "$1")
	let defaultguard = get(a:000, 1, "")

	let rootname = split(FindRootDirectory(),"/")[-1]
	let pathname = split(expand("%:p:h"), rootname)[-1]
	let pathname = rootname . pathname
	let filename = expand("%:t:r")
	let guardname = join(split(pathname, "/"), '_') . "_" . filename

	if guardname == ""
		return defaultguard
	else
		let guard = substitute(guardname, '\.', '', 'g')
		if guard == ""
			return substitute(template, '$1', guard, 'g')
		else
			let guard = guard . "_H_"
			return guard
endfunc
