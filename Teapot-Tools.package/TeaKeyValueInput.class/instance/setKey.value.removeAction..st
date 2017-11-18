initialization
setKey: keyString value: valueString removeAction: aBlock
	keyInput text: keyString.
	valueInput text: valueString.
	removeButton whenActionPerformedDo: [ aBlock value: self ].
	^ self