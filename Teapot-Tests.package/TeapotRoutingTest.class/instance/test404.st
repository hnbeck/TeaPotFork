tests
test404
 	self assert: (TeaTestClient httpGet: '1/2/3/4') code equals: 404