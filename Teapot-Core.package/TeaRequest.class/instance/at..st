acccessing - params
at: aSymbol
	^ self 
		at: aSymbol 
		ifAbsent: [ TeaNoSuchParam signalWithParam: aSymbol ]