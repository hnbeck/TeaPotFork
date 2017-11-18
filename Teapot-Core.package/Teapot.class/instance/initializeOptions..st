initialization
initializeOptions: optionsAssociations		
	dynamicRouter := TeaDynamicRouter new.
	staticRouter := TeaStaticRouter new.
	compositeRouter := TeaCompositeRouter routers: {dynamicRouter. staticRouter}.	
	defaultOutput := self responseTransformer: (optionsAssociations asDictionary at: #defaultOutput ifAbsent: #html).									
	self exception: TeaAbort -> [ :abort :req | abort response teaTransform: [ :same | same ] request: req].
	server := optionsAssociations asDictionary 
		at: #znServer
		ifAbsent: [ ZnServer defaultServerClass new ].
	server delegate: compositeRouter.	
	optionsAssociations do: [ :each | server optionAt: each key put:  each value ].	
	^ self