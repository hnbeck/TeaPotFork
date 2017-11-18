running
setUp
	server := Teapot on
		GET: '/user/<id>' -> [ :req | '1-', (req at: #id) ];
		GET: '/user/<id>/create' -> [ :req | '2-', (req at: #id) ];
		GET: '/<id>/<user>' -> [ :req | '3-', (req at: #id) ];				
		POST: '/user/<id>/create' -> [ :req | '4-', (req at: #id) ];
		start.		