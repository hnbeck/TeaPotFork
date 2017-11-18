response transformers
mustache: templateStringOrStream contentType: contentType
	^ [ :aTeaResponse | | model object entity |
		object := aTeaResponse body.
		model := (object respondsTo: #asDictionary) ifTrue: [ object asDictionary ] ifFalse: [ object ].		
		entity := (ZnStringEntity 
			with: (((self optionalClass: #MustacheTemplate) on: templateStringOrStream) value: model) 
			type: contentType).
		self 
			znEntity: entity
			code: aTeaResponse code 
			headers: aTeaResponse headers ]
