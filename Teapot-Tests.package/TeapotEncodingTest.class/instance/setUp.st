running
setUp
	server := Teapot on
		GET: 'enc' -> (TeaResponse ok 
								body: 'árvíztűrő tükörfúrógép'; 
								charSet: 'iso-8859-2');
		start