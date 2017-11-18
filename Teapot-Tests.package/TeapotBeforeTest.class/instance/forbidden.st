private
forbidden
	^ ZnResponse new
		statusLine: ZnStatusLine forbidden;
		headers: ZnHeaders defaultResponseHeaders;
		yourself