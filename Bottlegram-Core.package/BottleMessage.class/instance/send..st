accessing
send: aText
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"
	|aId|	
	aId := (self chat id) printString.
	self bot sendChatMessage: aText to: aId.