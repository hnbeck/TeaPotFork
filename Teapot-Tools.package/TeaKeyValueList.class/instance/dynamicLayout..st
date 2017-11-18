private
dynamicLayout: associations
	self focusOrder removeAll.
	models removeAll.
	self widgets removeAll.
	^ SpecLayout composed newColumn: [ :col |
			associations doWithIndex: [:assoc :i | 
				| inputName widget |
				inputName := ('input', i asString) asSymbol.
				self instantiateModels: {inputName.  #TeaKeyValueInput}.
				widget := self perform: inputName.
				widget
					setKey: assoc key
					value: assoc value
					removeAction: [ :me | self remove: me ].
				models add: widget.
				self focusOrder add: widget.
				col 
					newRow: [ :row | row add: inputName ] ] ].
		