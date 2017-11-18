icons
teapotServerStopIcon

	^ self icons
			at: #'teapotServerStopIcon'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self teapotServerStopIconContents readStream) ].