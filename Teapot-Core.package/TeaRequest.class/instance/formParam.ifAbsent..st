private
formParam: aSymbol ifAbsent: aBlock
	^ (znRequest entity isKindOf: ZnApplicationFormUrlEncodedEntity) "XXX do something better" 
		ifTrue: [ znRequest entity at: aSymbol ifAbsent: aBlock ]
		ifFalse: aBlock