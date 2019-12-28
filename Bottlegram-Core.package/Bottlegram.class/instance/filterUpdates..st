action
filterUpdates: aMessagesColection
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"
	|aMessagesFilter|
	aMessagesFilter:= aMessagesColection select: [ :each | each id > self lastMessage ].
	aMessagesFilter ifNotEmpty:[self lastMessage:((aMessagesFilter last) id ) + 0].
	^ aMessagesFilter.