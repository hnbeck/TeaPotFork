initialization
initializeRxMatcher: aRxMatcher 
	regexp := aRxMatcher.
	lock := Mutex new.
	^ self