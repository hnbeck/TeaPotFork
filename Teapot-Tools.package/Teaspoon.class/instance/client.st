private
client
	^ ZnClient new
		url: self urlInput text;
		method: self methodDropList selectedItem;
		entity: (ZnStreamingEntity 
			readFrom: (ReadStream on: requestBody urlEncoded)
			usingType: self contentTypeDropList selectedItem
			andLength: requestBody urlEncoded size)
		yourself