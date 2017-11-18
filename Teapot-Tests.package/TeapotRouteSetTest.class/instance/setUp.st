running
setUp
	server := Teapot on
		before: { '/secure/*' . '/protected/*' } -> [ :req | req abort: TeaResponse unauthorized ];	
		GET: {'/a'. '/b'. '/c'} -> 'abc';
		POST: { '/x/<param>'. '/y/<param>' } -> [ :req | req at: #param ];
		after: { '/a'. '/b' } -> [ :req :resp | resp headers at: 'test' put: 'ab' ];
		start.