response transformers
ston
	^ [ :aTeaResponse | | entity |
		entity := ZnStringEntity 
			with: ((self optionalClass: #STON) toString: aTeaResponse body) 
			type: (ZnMimeType textPlain charSet: aTeaResponse charSet; yourself).
		self 
			znEntity: entity
			code: aTeaResponse code 
			headers: aTeaResponse headers ]