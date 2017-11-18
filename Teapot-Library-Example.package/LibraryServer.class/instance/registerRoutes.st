initialization
registerRoutes
	teapot
		GET: '/' -> '<h1>A simple book library server</h1>'; output: #html;
		GET: '/books' -> (Send message: #readBooks: to: self);
		GET: '/books/<id:IsInteger>' -> (Send message: #readBook: to: self);
		POST: '/books' -> (Send message: #createBook: to: self);		
		PUT: '/books/<id:IsInteger>' -> (Send message: #updateBook: to: self);
		DELETE: '/books/<id:IsInteger>' -> (Send message: #deleteBook: to: self)