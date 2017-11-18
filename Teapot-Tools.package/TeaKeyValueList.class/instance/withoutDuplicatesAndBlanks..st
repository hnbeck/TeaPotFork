private
withoutDuplicatesAndBlanks: keyedCollection
	| keyset |
	keyset := PluggableSet new
		equalBlock: [ :a :b | a key = b key ];
		hashBlock: [ :x | x key hash ];
		yourself.				
	keyedCollection keysAndValuesDo: [ :key :value | 
		keyset add: (key -> value) ].
	^ keyset reject: [ :each | 
		each key isEmptyOrNil or: [ each value isEmptyOrNil ] ]