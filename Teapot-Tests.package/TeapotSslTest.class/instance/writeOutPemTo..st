private
writeOutPemTo: aFileReference
	aFileReference writeStreamDo: [ :stream | stream nextPutAll: self pemContent ]