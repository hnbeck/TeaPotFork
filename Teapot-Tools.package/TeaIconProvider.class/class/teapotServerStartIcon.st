icons
teapotServerStartIcon

	^ self icons
			at: #'teapotServerStartIcon'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self teapotServerStartIconContents readStream) ].