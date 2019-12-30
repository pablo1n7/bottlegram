action
getUpdates: onlyLast
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"
	|aData aMessages aMessagesColection|
	aData:=(self sendGET: '/getUpdates?offset=',self lastUpdate printString) at:'result'.
	aMessages := aData collect: [:each |(each at:'message')].
	aData ifNotEmpty: [ self lastUpdate: (aData last at: 'update_id') ].
	aMessagesColection := aMessages collect:[:each | BottleMessage new: each bot:self].
	onlyLast ifTrue: [aMessagesColection := self filterUpdates: aMessagesColection].
	^ aMessagesColection
