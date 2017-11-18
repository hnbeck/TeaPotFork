instance creation
fromCollection: aCollection 
	^ self new setPatterns: (aCollection collect: #asTeaUrlPattern)