url mapping
exception: anExceptionSetActionAssoc
	current := compositeRouter addErrorHandler:
		(TeaErrorHandler
			for: anExceptionSetActionAssoc key
			action: anExceptionSetActionAssoc value
			responseTransformer: defaultOutput)