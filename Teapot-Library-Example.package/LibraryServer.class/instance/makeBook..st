private
makeBook: request
	^ {#title   -> (request at: #title).
      #authors -> (request at: #authors)} asDictionary.