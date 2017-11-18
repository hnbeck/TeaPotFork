instance creation
key: keyString value: valueString removeAction: aBlock
	^ self new
		setKey: keyString 
		value: valueString
		removeAction: aBlock