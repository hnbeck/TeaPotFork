I'm the base class of the type constraints. I match to any object. My subclasses can restict the type of placeholders.

Example:

Teapot on
	GET: '/user/<id:IsInteger>' -> [:req | users findById: (req at: #id)];
	start.

This route matches to the '/users/12' but does not match to '/users/foobar'. In case of matching, the the path paramter "id" will be converted to an integer.

You can extend the built in type constraints with your own constraints, by implementing the "placeholder type constraint" protocol. Then you can use the class name in the URL.