inspecting
gtInspectorTeapotsIn: composite
	<gtInspectorPresentationOrder: 0>  
	
	^(composite list)
		title: 'Teapots';
		icon: [:each | self iconForTeapot: each ];
		display: [ self teapots ]; 
		format: [:each | self nameForTeapot: each ];
		selectionAct:  [:each | each selection ifNotNil: [ each selection start ]. each update ] icon: self iconProvider teapotServerStartIcon entitled: 'Start';
		selectionAct: [:each | each selection ifNotNil: [ each selection stop ]. each update ] icon: self iconProvider teapotServerStopIcon entitled: 'Stop';
		selectionAct: [:each | each selection ifNotNil: [ each selection browse ]. each update ] icon: self iconProvider teapotServerIcon entitled: 'Browse';
		act: [:each | self onNewServer. each update ] icon: self iconProvider teapotServerIcon entitled: 'New Teapot';
		act: [:each | self onNewStaticServer. each update ] icon: self iconProvider teapotServerStaticIcon entitled: 'New Teapot (serving static)'
		