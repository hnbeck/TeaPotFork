private
pattern: patternString noMatch: urlString
	| placeholders |
	placeholders := Dictionary new.
	self deny: ((TeaGlobUrlPattern parseString: patternString) matchesUrl: urlString asUrl placeholders: placeholders).
	^ placeholders