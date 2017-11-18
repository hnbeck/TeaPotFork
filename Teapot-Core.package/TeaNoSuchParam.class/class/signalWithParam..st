signaling
signalWithParam: aSymbol
	(self new setParam: aSymbol) signal: 'Param ', aSymbol printString, ' not found'