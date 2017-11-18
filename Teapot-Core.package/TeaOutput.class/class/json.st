response transformers
json
	^ [ :aTeaResponse | | entity |
		entity := ZnStringEntity 
			with: ((self optionalClass: #NeoJSONWriter) toString: aTeaResponse body) 
			type: (ZnMimeType applicationJson charSet: aTeaResponse charSet; yourself).
		self 
			znEntity: entity
			code: aTeaResponse code 
			headers: aTeaResponse headers ]