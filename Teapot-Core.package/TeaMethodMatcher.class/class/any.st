instance creation
any
	^ self new 
		setMatcherBlock: [ :anyMethod | true ] 
		name: 'ANY'