action
sendChatMessage: aMessage to: aChatID
	|dict|
	dict := Dictionary new. 
	dict at: 'chat_id' put: aChatID; at: 'text' put: aMessage.
	self sendPOST: '/sendMessage' data: dict