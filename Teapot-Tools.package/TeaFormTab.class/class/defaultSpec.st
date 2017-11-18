specs
defaultSpec
	^ SpecLayout composed
		newColumn: [ :col |
			col 
				add: #form;
				add: #addButton height: self buttonHeight ]