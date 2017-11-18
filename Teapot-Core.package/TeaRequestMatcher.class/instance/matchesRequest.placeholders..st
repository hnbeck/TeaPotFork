private
matchesRequest: aZnRequest placeholders: placeholders
	| matchesPartially |
	matchesPartially := (methodMatcher matchesHttpMethod: aZnRequest method)
		and: [ urlPattern matchesUrl: aZnRequest url placeholders: placeholders ].	
	matchesPartially ifFalse: [ ^ false ].
	^ whenClause cull: (TeaRequest fromZnRequest: aZnRequest pathParams: placeholders).