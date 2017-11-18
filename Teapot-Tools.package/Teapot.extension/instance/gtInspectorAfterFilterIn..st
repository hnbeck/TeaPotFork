*Teapot-Tools
gtInspectorAfterFilterIn: composite
	<gtInspectorPresentationOrder: 2>  
	
	^(composite table)
		title: ['After Filter' translated];		 
		display: [ compositeRouter afterFilters ]; 
		column: 'Request matcher' evaluated: [:filter| filter requestMatcher ];
		column: 'Action' evaluated: [:filter| filter action ];
		selectionAct: [:p | p entity removeAfterFilter: p selection. 
			p pane browser update ] entitled: 'Remove filter' translated;
		selectionAct: [:p | p entity removeAllAfterFilters. 
			p pane browser update ] entitled: 'Remove all' translated