running
setUp
	server := Teapot on
		GET: '/test400' -> [ 
			TeaResponse badRequest
				body: 'malformed input';
				headers: { 'my-header' -> 'my-value' } ];
		start