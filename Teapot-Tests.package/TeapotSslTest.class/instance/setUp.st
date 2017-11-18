initialization
setUp
	self writeOutPemTo: self pemFile.
	teapot := Teapot configure: { 
		#znServer -> (
			(ZnSecureServer on: 1443) 
				certificate: self pemFile fullName;
				yourself).
	}.
	teapot
		GET: '/ssl' -> 'secure';
		start.