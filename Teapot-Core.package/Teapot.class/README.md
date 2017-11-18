I'm the Teapot server on top of ZnServer. I can handle URL routing as follows:

Teapot on
      GET: '/hi' -> 'Hello World!';
      GET: '/a/*/b' -> (Send message: #ab: to: controller);
      GET: '/users' -> [ users ]; output: #json	
      GET: '/user/<id>' -> [ :req | (req at: #id) ]; output: #ston;
      PUT: '/books/<id>' -> [ :req | | book |
	  book := Book author: (req at: #author) title: (req at: #title).
        books at: (req at: #id) put: book ]; 
	  output: #ston;
      start.

For more configuration option see the Teapot class>>configure method.