action
actionBot: aMessage
	|command|
	[ command := self commandBot at:(aMessage text).] 
			on: Exception 
			do: [ command := #defaultText:. ].
	
	self perform: command with: aMessage