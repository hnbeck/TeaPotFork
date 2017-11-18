running
setUp
	server := Teapot on
		GET: '/zerodiv' -> [ 1 / 0 ];
		GET: '/sub' -> [ #() at: 123 ];			
		GET: '/domain' -> [ -2 sqrt ];
		GET: '/nonbool' -> [ NotYetImplemented signal ];
		GET: '/keynotfound' -> [ KeyNotFound signal ];
		exception: ZeroDivide -> [ :ex :req | 'zerodiv handled' ];
		exception: SubscriptOutOfBounds, DomainError -> (Send message: #handleError:request: to: self);
		exception: NotYetImplemented -> (ZnResponse ok: (ZnStringEntity text: 'nonbool handled'));
		exception: KeyNotFound -> 42;
		output: [ :resp :req | ZnResponse ok: (ZnStringEntity text: resp body printStringRoman) ];
		start		