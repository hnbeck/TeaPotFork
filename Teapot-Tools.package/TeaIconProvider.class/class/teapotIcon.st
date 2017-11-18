icons
teapotIcon

	^ self icons
			at: #'teapotIcon'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self teapotIconContents readStream) ].