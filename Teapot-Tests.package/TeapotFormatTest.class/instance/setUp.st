running
setUp
	server := Teapot on
		GET: '/a' -> [ 4 ]; output: [ :resp :req | ZnResponse ok: (ZnStringEntity text: resp body printStringRoman) ];
		GET: 'default' -> 'any';
		GET: '/plain' -> 'any'; output: #text;
		GET: 'xml' -> 'any'; output: (TeaOutput stringWithContentType: ZnMimeType applicationXml);
		start		