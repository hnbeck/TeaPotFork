instance creation
exactly: aSymbol
	^ self new 
		setMatcherBlock: [ :actual | actual = aSymbol ] 
		name: aSymbol asString