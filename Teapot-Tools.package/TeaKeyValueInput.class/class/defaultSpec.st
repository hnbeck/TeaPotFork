specs
defaultSpec
	^ SpecLayout composed
		newRow: [ :row |
			row
				add: #keyInput;
				add: #valueInput;
				add: #removeButton ]
		 height: self height