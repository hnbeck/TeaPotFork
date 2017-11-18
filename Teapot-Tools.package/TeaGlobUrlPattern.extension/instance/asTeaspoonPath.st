*Teapot-Tools
asTeaspoonPath
	^ String streamContents: [ :aStream |
			segments 
				do: [ :each | each printOn: aStream ]
				separatedBy: [ aStream nextPut: $/ ] ]