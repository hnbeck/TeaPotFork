instance creation
configure: optionsAssociations
	"Create a new Teapot instance with optional properties.
 	 - Teapot properties: #defaultOutput, #znServer
	 - ZnServer properties: See options protocol of ZnServer for specific usages.	
	Example: Teapot configure: { 
		#defaultOutput -> #json. 
		#bindAddress -> #[192 168 0 3].
		#port -> 8080. 
		#debugMode -> true 
	}."
	
	^ self new initializeOptions: optionsAssociations