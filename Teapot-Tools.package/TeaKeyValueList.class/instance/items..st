protocol
items: keyedCollection
	self needFullRebuild: false.
	self buildWithSpecLayout: 
		(self dynamicLayout: 
			(self withoutDuplicatesAndBlanks: keyedCollection))