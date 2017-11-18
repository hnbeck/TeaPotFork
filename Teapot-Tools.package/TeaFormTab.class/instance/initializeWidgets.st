initialization
initializeWidgets
	addButton := self newButton label: 'Add parameter'; yourself.
	form := self instantiate: TeaKeyValueList.
	self focusOrder 
		add: form;
		add: addButton.