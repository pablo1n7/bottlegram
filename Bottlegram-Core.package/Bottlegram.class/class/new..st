instance creation
new: aBotID
	"comment stating purpose of class-side message"
	"scope: class-variables  &  class-instance-variables"				
	| bot url |
	url := 'https://api.telegram.org/bot'.
	bot := self new.
	bot botID: aBotID.
	bot baseURL: (url, bot botID).
	bot checkBot.
	bot lastMessage: 0.
	bot lastUpdate: '0'.
	^ bot