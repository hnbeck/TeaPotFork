*Teapot-Tools
asRequestBuilderPath
	^ patterns 
		ifEmpty: [ '/' ]
		ifNotEmpty: [ patterns first asTeaspoonPath ]