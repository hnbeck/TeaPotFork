private
handleError: ex request: req
	self assert: (ex isKindOf: Exception).
	self assert: (req isKindOf: TeaRequest).
	^ ZnResponse ok: (ZnStringEntity text: 'outofbounds/domainerror handled')