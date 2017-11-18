running
setUp
	server := Teapot on
		POST: '/form' -> [ :req | (req at: #foo), '-', (req at: #bar) ];
		exception: TeaNoSuchParam -> 'no such param';
		start.