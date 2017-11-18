private
responseTransformer: transformerBlockOrSymbol
	^ transformerBlockOrSymbol isSymbol
		ifTrue: [ TeaOutput perform: transformerBlockOrSymbol ]
		ifFalse: [ transformerBlockOrSymbol ]