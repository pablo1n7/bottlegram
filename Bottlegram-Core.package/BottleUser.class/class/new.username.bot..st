instance creation
new: aID username: aUsername bot: isBot
	"comment stating purpose of class-side message"
	"scope: class-variables  &  class-instance-variables"	
			
	| aUser |
	aUser:= self new.
	aUser id: aID.
	aUser bot: isBot.
	aUser username: aUsername.
	^ aUser