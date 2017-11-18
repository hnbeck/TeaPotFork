icons
teapotServerIcon

	^ self icons
			at: #'teapotServerIcon'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self teapotServerIconContents readStream) ].