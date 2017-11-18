private
httpPost: aString
	^ ZnEasy post: 'http://localhost:1701/', aString data: (ZnEntity text: 'any')

	