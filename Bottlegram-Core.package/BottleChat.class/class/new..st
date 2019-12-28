instance creation
new: aJSONMessage
	"comment stating purpose of class-side message"
	"scope: class-variables  &  class-instance-variables"	
			
	| aBottleChat aUser|
	aBottleChat := BottleChat new.
	aBottleChat id: (aJSONMessage at:'id').
	aBottleChat type: (aJSONMessage at:'type').
	^ aBottleChat 
	"aUser:=BottleUser new: (aJSONMessage at:'from').
	aChat:=BottleChat new: (aJSONMessage at:'chat'). "