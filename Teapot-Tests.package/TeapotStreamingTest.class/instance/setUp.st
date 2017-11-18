running
setUp
	downloadFile := self createDownloadableFile.
	server := Teapot on
		GET: '/stream' -> downloadFile readStream;
		output: #stream;
		start