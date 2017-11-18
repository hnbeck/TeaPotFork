running
setUp
	client := LibraryClient port: self port.
	server := LibraryServer serveOn: self port.
	book1 := {#title -> 'book 1'. #authors -> 'author 1'} asDictionary.
	book2 := {#title -> 'book 2'. #authors -> 'author 2'} asDictionary