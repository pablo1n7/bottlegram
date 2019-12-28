instance creation
new: aID username: aUsername
	"comment stating purpose of class-side message"
	"scope: class-variables  &  class-instance-variables"	
			
	| aUser |
	aUser:= self new.
	aUser id: aID.
	aUser username: aUsername.
	^ aUser