private
optionalClass: aSymbol
	[ ^ Smalltalk at: aSymbol ]
		on: KeyNotFound
		do: [ self error: 'An optional dependency ', aSymbol, ' was not found. Please load it first.' ]