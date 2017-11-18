specs
defaultSpec
	^ SpecLayout composed
		newColumn: [ :col |
			col 
				add: #label height: self inputTextHeight;
				add: #requestBody ]