filters
before: patternActionAssoc
	current := compositeRouter addBeforeFilter:		
		(TeaBeforeFilter 
			urlPattern: patternActionAssoc key asTeaUrlPattern 
			action: patternActionAssoc value)