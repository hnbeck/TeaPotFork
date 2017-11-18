actions
onNewStaticServer
	|port directory pot |
	port := UIManager default request: 'New server' initialAnswer: '80'.
	port ifNil: [ ^self ].
	directory := UIManager default chooseDirectory: 'Serve directory'.
	directory ifNil: [ ^self ].
	pot := Teapot configure: { 
		#port -> port asNumber
	}.
	pot serveStatic: '/' from: directory.
	pot start
	
		
