instance creation
new: aJSONMessage
	"comment stating purpose of class-side message"
	"scope: class-variables  &  class-instance-variables"	
			
	| aMessage aChat aUser|
	aUser:=BottleUser new: (aJSONMessage at:'from').
	aChat:=BottleChat new: (aJSONMessage at:'chat'). 
	aMessage:= self new.
	aMessage from: aUser.
	aMessage chat: aChat.
	aMessage text: (aJSONMessage at:'text').
	aMessage date: (aJSONMessage at:'date').
	aMessage id: (aJSONMessage at:'message_id').
	
	^ aMessage 