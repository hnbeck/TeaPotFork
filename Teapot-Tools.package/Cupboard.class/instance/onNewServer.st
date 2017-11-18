actions
onNewServer
	|port pot |
	port := UIManager default request: 'New server' initialAnswer: '80'.
	port ifNil: [ ^self ].
	pot := Teapot configure: { 
		#port -> port asNumber
	}.
	pot start
	
		
