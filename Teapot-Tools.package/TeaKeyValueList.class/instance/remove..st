private
remove: model
	self needFullRebuild: false.
	models remove: model.
	self buildWithSpecLayout: (self dynamicLayout: self asAssociations)