private
iconForTeapot: aTeapot
	^aTeapot server isRunning 
			ifTrue: [ self iconProvider teapotServerStartIcon ] 
			ifFalse: [ self iconProvider teapotServerStopIcon ]