initialization
initializePresenter
	execButton
		whenActionPerformedDo: [ 
			self urlInput text notEmpty
				ifTrue: [ self consumer value: self client execute ]]