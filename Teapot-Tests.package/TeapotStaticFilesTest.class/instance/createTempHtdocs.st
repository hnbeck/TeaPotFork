private
createTempHtdocs
	| tmpHtdocs |
	tmpHtdocs := FileLocator temp asFileReference / 'test_htdocs'.
	tmpHtdocs createDirectory.
	tmpHtdocs / 'index.html' writeStreamDo: [ :stream | stream nextPutAll: 'static index' ].
	tmpHtdocs / 'a.txt' writeStreamDo: [ :stream | stream nextPutAll: 'a' ].
	tmpHtdocs / 'b.txt' writeStreamDo: [ :stream | stream nextPutAll: 'static' ].
	^ tmpHtdocs