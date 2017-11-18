*Teapot-Core
teaTransform: aResponseTransformer request: aTeaRequest
	^ aResponseTransformer cull: (TeaResponse ok body: self) cull: aTeaRequest