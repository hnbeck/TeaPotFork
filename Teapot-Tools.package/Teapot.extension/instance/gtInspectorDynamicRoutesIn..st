*Teapot-Tools
gtInspectorDynamicRoutesIn: composite
	<gtInspectorPresentationOrder: 0>  
	
	^(composite list)
		title: ['Dynamic routes' translated];		 
		display: [ dynamicRouter routes ]; 
		format: [:each | each printString ];
		selectionAct: [:p | p entity removeDynamicRoute: p selection. 
			p pane browser update ] entitled: 'Remove route' translated;
		selectionAct: [:p | p entity removeAllDynamicRoutes. 
			p pane browser update ] entitled: 'Remove all' translated