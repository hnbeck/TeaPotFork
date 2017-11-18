An UrlPattern is made from segments. I can be matched against an actual URL. '*' and <named-parameters> can be used inside the pattern.

I can parse the pattern from a string by saying:

	self parseString: '/foo/*/<id>/bar'

Which will create a pattern that matches to an URL like this: 

	/foo/xyz/12/bar