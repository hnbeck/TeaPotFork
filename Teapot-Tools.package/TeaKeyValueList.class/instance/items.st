protocol
items
	^ self withoutDuplicatesAndBlanks: (self asAssociations asOrderedDictionary)