initialization
initializePort: anInteger
	bookShelf := BookShelf new.
	teapot := Teapot configure: { 
		#port -> anInteger. 
		#debugMode -> true. 
		#defaultOutput -> #json 
	}.
	^ self 
		registerRoutes;
		registerErrorHandlers;
		yourself