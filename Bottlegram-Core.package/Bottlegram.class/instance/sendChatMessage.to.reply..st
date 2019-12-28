action
sendChatMessage: aMessage to: aChatID reply: aMessageId
	|dict|
	dict := Dictionary new. 
	dict at: 'chat_id' put: aChatID; at: 'text' put: aMessage; at:'reply_to_message_id' put: aMessageId.
	self sendPOST: '/sendMessage' data: dict