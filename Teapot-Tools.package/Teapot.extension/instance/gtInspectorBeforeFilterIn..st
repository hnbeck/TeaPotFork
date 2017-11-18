*Teapot-Tools
gtInspectorBeforeFilterIn: composite
	<gtInspectorPresentationOrder: 1>  
	
	^(composite table)
		title: ['Before Filter' translated];		 
		display: [ compositeRouter beforeFilters ];
		column: 'Request matcher' evaluated: [:filter| filter requestMatcher ];
		column: 'Action' evaluated: [:filter| filter action ];
		selectionAct: [:p | p entity removeBeforeFilter: p selection. 
			p pane browser update ] entitled: 'Remove filter' translated;
		selectionAct: [:p | p entity removeAllBeforeFilters. 
			p pane browser update ] entitled: 'Remove all' translated