instance creation
new: aJSONUser
	"comment stating purpose of class-side message"
	"scope: class-variables  &  class-instance-variables"	
			
	| aUser |
	aUser:= self new:(aJSONUser at:'id') username:(aJSONUser at:'first_name') bot: (aJSONUser at:'is_bot').
	^aUser 