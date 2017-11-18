private
pattern: patternString matches: urlString
	| placeholders |
	placeholders := Dictionary new.
	self assert: ((TeaGlobUrlPattern parseString: patternString) matchesUrl: urlString asUrl placeholders: placeholders).
	^ placeholders