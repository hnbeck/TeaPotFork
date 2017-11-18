private
queryOrFormParam: aSymbol ifAbsent: aBlock
	^ znRequest uri 
		queryAt: aSymbol 
		ifAbsent: [ self formParam: aSymbol ifAbsent: aBlock ]