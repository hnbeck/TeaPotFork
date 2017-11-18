initialization
initialize
	super initialize.
	errorhandlers := OrderedCollection new.
	beforeFilters := OrderedCollection new.
	afterFilters := OrderedCollection new.