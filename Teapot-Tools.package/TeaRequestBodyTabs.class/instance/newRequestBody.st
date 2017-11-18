initialization
newRequestBody
	raw := self newText autoAccept: true; yourself.
	form := TeaFormTab new.
	^ self newTabManager
			addTab: (self newTab
				label: self rawTabTitle;
				closeable: false;
				model: raw);
			addTab: (self newTab
				label: self formTabTitle;
				closeable: false;				
				model: form);
			whenTabSelected: [:selected |
				selected label = self formTabTitle
					ifTrue: [ form updateKeyValus: ('?', raw text) asUrl query ] 
					ifFalse: [ form writeUrlEncodedTo: raw ] ]