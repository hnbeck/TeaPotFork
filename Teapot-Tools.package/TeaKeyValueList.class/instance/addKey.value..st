protocol
addKey: keyString value: valueString
	self needFullRebuild: false.	
	self buildWithSpecLayout: 
		(self dynamicLayout: 
			(self asAssociations copyWith: keyString -> valueString))