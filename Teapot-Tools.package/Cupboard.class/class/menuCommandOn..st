world menu
menuCommandOn: aBuilder 
	<worldMenu> 
	
	(aBuilder item: #'Teapot')	 
		help: 'Teatime'; 
		parent: #'Tools' translated;
		icon: self iconProvider teapotIcon;
		action: [ self soleInstance inspect ].
	 aBuilder withSeparatorAfter 