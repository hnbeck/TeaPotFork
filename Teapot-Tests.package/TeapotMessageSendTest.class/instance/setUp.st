running
setUp
	server := Teapot on
		GET: '/msg1' -> (Send message: #msg1 to: self);
		GET: '/msg2/<param>' -> (Send message: #msg2Req:nil: to: self);		
		GET: '/msg3/<param>' -> (Send message: #msg3Req: to: self);					
		start.		