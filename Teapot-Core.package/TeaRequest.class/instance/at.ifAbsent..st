acccessing - params
at: aSymbol ifAbsent: aBlock
	"Gets the value of a path parameter, query parameter for form parameter.
		E.g. /foo/<path-param>/bar
		E.g. /foo?queryParam=value"

	^ pathParams at: aSymbol ifAbsent: [ self queryOrFormParam: aSymbol ifAbsent: aBlock	"XXX do something better" ]