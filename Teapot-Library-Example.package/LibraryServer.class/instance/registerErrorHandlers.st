initialization
registerErrorHandlers
	teapot
		exception: TeaNoSuchParam -> (Send message: #missingParam:request: to: self);
		exception: BookNotFound -> (Send message: #bookNotFound:request: to: self);
		exception: Error -> (TeaResponse serverError body: { #code -> 'ERROR' } asDictionary )		