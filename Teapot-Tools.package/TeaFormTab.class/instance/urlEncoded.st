private
urlEncoded
	| url formParams |
	url := '/' asZnUrl.
	formParams := form items.
	formParams ifEmpty: [ ^ '' ].
	formParams do: [ :association | url := url withQuery: association ].
	^ url asString allButFirst: 2
	