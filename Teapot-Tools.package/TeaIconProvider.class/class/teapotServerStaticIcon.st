icons
teapotServerStaticIcon

	^ self icons
			at: #'teapotServerStaticIcon'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self teapotServerStaticIconContents readStream) ].