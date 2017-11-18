response transformers
stream: aZnMimeType
	^ [ :aTeaResponse | | entity |
		entity := ZnStreamingEntity 
			readFrom: aTeaResponse body
			usingType: aZnMimeType
			andLength: aTeaResponse body size.
		self 
			znEntity: entity
			code: aTeaResponse code 
			headers: aTeaResponse headers ]
