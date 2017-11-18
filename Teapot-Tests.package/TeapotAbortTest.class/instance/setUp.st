running
setUp
	server := Teapot on
		GET: 'badrequest' -> [ :req | req abort: (ZnResponse badRequest: req) ];
		GET: 'unauthorized' -> [ :req | req abort: TeaResponse unauthorized ];
		GET: 'abortstring' -> [ :req | req abort: 'abort test' ];		
		start.