initialization
initialize
	super initialize.
	headers := Dictionary new.
	body := String crlf.
	code := ZnStatusLine ok code.
	charSet := 'utf-8'.