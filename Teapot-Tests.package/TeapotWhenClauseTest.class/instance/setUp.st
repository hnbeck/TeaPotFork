running
setUp
	server := Teapot on
		any: '/when' -> 'get'; when: [:req | req method = 'GET'];
		any: '/when' -> 'post'; when: [:req | req method = 'POST'];
		any: '/when/<p>' -> 'param-dispatch'; when: [:req | (req at: #p) = 'pval'];
		any: '/when' -> 'unfiltered';
		any: '/never' -> 'never match'; when: [ false ];
		before: '/*' -> [:req | 
			req abort: (TeaResponse ok body: 'before') ]; 
			when: [:req | req relativeUrl path = 'beforeurl' ];
		after: '/*' -> [:req :resp | 
			resp statusLine: ZnStatusLine ok. 
			resp entity: (ZnStringEntity text: 'after') ]; 
			when: [:req | req relativeUrl path = 'afterurl' ];
		start