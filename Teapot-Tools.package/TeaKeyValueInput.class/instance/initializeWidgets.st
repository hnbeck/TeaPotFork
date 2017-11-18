initialization
initializeWidgets	
	keyInput := self newTextInput autoAccept: true; ghostText: 'key'; yourself.
	valueInput := self newTextInput autoAccept: true; ghostText: 'value'; yourself.
	removeButton := self newButton label: 'Remove'; yourself.
	self focusOrder
		add: keyInput;
		add: valueInput;
		add: removeButton.
		
