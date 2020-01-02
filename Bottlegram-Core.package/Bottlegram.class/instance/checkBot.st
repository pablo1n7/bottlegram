action
checkBot
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"
	| result |
	result := self sendGET:'/getMe'.
	(result at: 'ok') ifFalse:[ Exception new signal: 'Bot Error'.]
	
