private
parseResponse: aZnResponse
	^ aZnResponse isSuccess
		ifTrue: [ (NeoJSONReader on: aZnResponse entity readStream) next ]
		ifFalse: [ self error: 'Unexpected response: ', aZnResponse code asString ]