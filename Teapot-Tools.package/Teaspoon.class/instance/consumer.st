private
consumer
	^ consumer ifNil: [ consumer := [ :any | any inspect ] ]