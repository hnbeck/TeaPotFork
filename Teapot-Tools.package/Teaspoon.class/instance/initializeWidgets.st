initialization
initializeWidgets
	methodDropList := self newMethodDropList.
	urlInput := self newTextInput autoAccept: true; yourself.
	requestBody := TeaRequestBodyTabs new.
	contentTypeLabel := self newLabel label: 'Content Type'; yourself.
	contentTypeDropList := self newContentTypeDropList.
	execButton := self newButton label: 'Execute request'; yourself.