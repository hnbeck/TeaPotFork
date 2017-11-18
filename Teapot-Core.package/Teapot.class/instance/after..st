filters
after: patternActionAssoc
	current := compositeRouter addAfterFilter:		
		(TeaAfterFilter 
			urlPattern: patternActionAssoc key asTeaUrlPattern 
			action: patternActionAssoc value)