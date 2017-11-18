icons
teaspoonIcon

	^ self icons
			at: #'teaspoonIcon'
			ifAbsentPut: [ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self teaspoonIconContents readStream) ].