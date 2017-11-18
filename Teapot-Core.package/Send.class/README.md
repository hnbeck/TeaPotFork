I can send messages to objects on a http requests. The selector of the message can take maximum 2 arguments ( TeaRequest and TeaResponse).

Example:

Teapot on
	GET: '/hi' -> (Send message: #greet to: controller);
	start.
	