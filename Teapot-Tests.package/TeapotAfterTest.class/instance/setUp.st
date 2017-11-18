running
setUp
	server := Teapot on
		after: '/after/<param>' -> [ :req :resp | resp headers at: 'header-key' put: (req at: #param) ];
		GET: '/after/*' -> 'after-return';		
		start		