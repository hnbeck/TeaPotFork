private
evaluateAfterFilters: aZnRequest response: aZnResponse
	afterFilters do: [ :each | each handleRequest: aZnRequest response: aZnResponse ]