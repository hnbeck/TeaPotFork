private
trimTrailingSlash: urlSegments 
	^ (urlSegments isNotEmpty and: [ urlSegments last = '/' ])
		ifTrue: [ urlSegments allButLast ]
		ifFalse: [ urlSegments ]