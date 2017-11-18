private
createDownloadableFile
	| file |
	file := FileLocator temp asFileReference / 'download.file'.
	file writeStreamDo: [ :stream | stream nextPutAll: self content ].
	^ file
