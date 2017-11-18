running
setUp
	log := OrderedCollection new.
	server := Teapot on
		before: '/secure/*' -> [ :req | ((req at: #user) = 'admin' and: [ (req at: #pass) = '****' ]) 
			ifFalse: [ req abort: self forbidden ] ];
		before: '*' -> (Send message: #logRequest: to: self);
		before: '*' -> 'any';
		GET: '/secure' -> 'protected';
		GET: '/secure/1/2/3' -> 'protected';
		POST: '/public' -> 'public';
		start		