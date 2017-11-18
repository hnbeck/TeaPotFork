private
httpPut: aString
	^ ZnEasy put: 'http://localhost:1701/', aString data: (ZnEntity text: 'any')

	