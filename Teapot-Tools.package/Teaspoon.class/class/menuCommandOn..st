world menu
menuCommandOn: aBuilder 
	<worldMenu> 
	
	(aBuilder item: #'Teaspoon')	 
		help: 'Teaspoon'; 
		parent: #'Tools' translated;
		icon: self iconProvider teaspoonIcon;
		action: [ self open ].