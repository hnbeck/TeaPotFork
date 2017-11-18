running
setUp
	| stream |
	stream := ZnStreamingEntity
		readFrom: 'direct stream' readStream
		usingType: ZnMimeType textHtml
		andLength: 'direct stream' size.
		
	server := Teapot on
		GET: '/resp1' -> [ :req | ZnResponse ok: (ZnStringEntity text: 'direct response') ];
		GET: '/resp2' -> (ZnResponse ok: stream);
		GET: '/redirect' -> (ZnResponse redirect: '/redirect_location');
		GET: '/redirect_location' -> 'redirected here';
		start