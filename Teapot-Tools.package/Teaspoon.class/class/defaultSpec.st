specs
defaultSpec
	^ SpecLayout composed
		newColumn: [ :col | 									
			col 
				newRow: [ :row | 
					row 
						add: #methodDropList width: 90;
						add: #urlInput ]
				height: self inputTextHeight.
			col
				add: #requestBody;
				add: #contentTypeLabel height: self inputTextHeight;
				add: #contentTypeDropList height: self inputTextHeight.
			col 
				newRow: 
					[ :row | row add: #execButton ] 
				height: self buttonHeight				
		]