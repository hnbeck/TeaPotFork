running
setUp
	server := Teapot on
		GET: '/' -> '1';
		GET: '/a' -> '2';
		GET: '/a/*/b' -> [ '3' ];
		GET: '/*/c' -> [ '4' ];	
		GET: '/x/y/*' -> [ '5' ];
		GET: '/x/*/*/z/*' -> [ '6' ];
		any: 'any' -> 'any';
		start.		