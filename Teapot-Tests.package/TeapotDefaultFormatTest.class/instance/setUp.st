running
setUp
	server := (Teapot configure: { #defaultOutput -> #text })
		GET: 'default' -> 'any';
		GET: 'html' -> 'any'; output: #html;
		start		