A route handles http requests if it matches to the route. I have four major parts.

- A handler that can be a block, a value or a message send.
- An url pattern that can be matched against actual urls.
- An http method that can be matched against the actual http method.
- A response transformer for creating ZnResponse from the object returned by the handler.