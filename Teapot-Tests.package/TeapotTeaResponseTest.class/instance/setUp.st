running
setUp
	server := Teapot on
		GET: '/ok' -> (TeaResponse ok body: 'tested ok');
		GET: '/badrequest' -> [:req | TeaResponse badRequest body: 'Bad Request'];
		GET: '/created' -> [:req | TeaResponse created body: 'Created'; location: req url];
		GET: '/notallowed' -> [:req | TeaResponse methodNotAllowed ];
		GET: '/notfound' -> [:req | TeaResponse notFound ];
		GET: '/notmodified' -> [:req | TeaResponse notModified ];
		GET: '/redirect' -> (TeaResponse redirect location: '/target');
		GET: '/servererror' -> (TeaResponse serverError body: 'tested server error');
		GET: '/unauthorized' -> (TeaResponse unauthorized body: 'Unauthorized'; headerName: 'WWW-Authenticate' value: 'tested unauthorized');
		start