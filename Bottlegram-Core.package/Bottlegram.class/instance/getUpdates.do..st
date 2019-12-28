action
getUpdates: onlyLast do: aBlock
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"
	|aMessagesColection|
	aMessagesColection := self getUpdates: onlyLast.
	aMessagesColection do: aBlock.