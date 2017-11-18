protocol
urlEncoded
	requestBody selectedTab label = self formTabTitle
		ifTrue: [ raw text: form urlEncoded ].
	^ raw text