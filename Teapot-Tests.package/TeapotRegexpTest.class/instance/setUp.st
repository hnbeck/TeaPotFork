running
setUp
	server := Teapot on
		GET: '/./' asRegex -> [ 'regexp' ];
		GET: '\w+(\d)/\d/xxx' asRegex -> [ :req | req at: 1 ];
		GET: '/(\d)/([abc]+)/\d/(.*)' asRegex -> [ :req | (req at: 1), (req at: 2), (req at: 3) ];		
		start