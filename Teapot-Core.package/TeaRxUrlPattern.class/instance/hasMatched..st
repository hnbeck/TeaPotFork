private
hasMatched: aZnUrl
	"XXX RxMatcher has state. Consider something better"
	^ lock critical: [ (regexp matches: aZnUrl path) or: [ regexp matches: '/', aZnUrl path ] ]