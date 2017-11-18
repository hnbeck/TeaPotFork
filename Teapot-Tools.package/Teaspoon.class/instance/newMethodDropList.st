initialization
newMethodDropList
	| dropList |
	dropList := self newDropList.
	ZnConstants knownHTTPMethods do: [ :each | 
		dropList addItemLabeled: each do: [] ].
	^ dropList