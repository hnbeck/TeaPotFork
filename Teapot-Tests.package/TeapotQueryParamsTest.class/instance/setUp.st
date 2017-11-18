running
setUp
	server := Teapot on
		GET: '/query' -> [ :req | req at: #foo ];
		GET: '/queryopt' -> [ :req | req at: #foo ifAbsent: [ 'default' ] ];		
		start