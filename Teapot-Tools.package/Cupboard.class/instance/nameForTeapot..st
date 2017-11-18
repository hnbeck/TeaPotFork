private
nameForTeapot: aTeapot
	^String streamContents: [:stream |
		stream nextPutAll: aTeapot server port asString.
		stream nextPutAll: ' - '.
		stream nextPutAll: (aTeapot server isRunning ifTrue: [ 'running' ] ifFalse: [ 'stopped' ]) ].
