running
setUp
	htdocs := self createTempHtdocs.
	server := Teapot on
		GET: 'here/are/statics/b.txt' -> 'dynamic';
		serveStatic: 'here/are/statics' from: htdocs;
		start