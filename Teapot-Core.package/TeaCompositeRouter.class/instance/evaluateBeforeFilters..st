private
evaluateBeforeFilters: aZnRequest
	beforeFilters do: [ :each | each handleRequest: aZnRequest ]