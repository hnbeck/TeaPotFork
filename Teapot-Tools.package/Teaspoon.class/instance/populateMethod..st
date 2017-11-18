private
populateMethod: methodString
	| selected |
	selected := methodDropList listItems
		detect: [ :each | each = methodString ]
		ifNone: [ methodDropList listItems first ].
	methodDropList setSelectedItem: selected