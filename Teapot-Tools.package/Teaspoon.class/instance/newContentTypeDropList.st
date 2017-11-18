initialization
newContentTypeDropList
	| dropList |
	dropList := self newDropList.
	#(
		applicationFormUrlEncoded 
		applicationJson 
		applicationXml 
		applicationSton 
		applicationOctetStream 
		text 
		textHtml 
		textPlain
	) do: [ :each | dropList addItemLabeled: (each value: ZnMimeType) do: [] ].	
	^ dropList