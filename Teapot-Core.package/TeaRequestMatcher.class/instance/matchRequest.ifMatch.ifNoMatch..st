request matcher
matchRequest: aZnRequest ifMatch: matchBlock ifNoMatch: noMatchBlock
	| matches placeholders |
	placeholders := Dictionary new.
	matches := self matchesRequest: aZnRequest placeholders: placeholders.
	^ matches
		ifTrue: [ matchBlock value: (TeaRequest fromZnRequest: aZnRequest pathParams: placeholders) ]
		ifFalse: [ noMatchBlock value ]