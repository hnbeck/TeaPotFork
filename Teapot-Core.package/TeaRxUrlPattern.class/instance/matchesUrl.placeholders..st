url matcher
matchesUrl: aZnUrl placeholders: aDictionary 
	| match |
	match := self hasMatched: aZnUrl.
	match ifTrue:
		[ 2 to: regexp subexpressionCount do: [ :i | 
			aDictionary at: i - 1put: (regexp subexpression: i) ] ].
	^ match
