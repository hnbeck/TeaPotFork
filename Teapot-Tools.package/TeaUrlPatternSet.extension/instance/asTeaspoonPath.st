*Teapot-Tools
asTeaspoonPath
	^ patterns 
		ifEmpty: [ '/' ]
		ifNotEmpty: [ patterns first asTeaspoonPath ]