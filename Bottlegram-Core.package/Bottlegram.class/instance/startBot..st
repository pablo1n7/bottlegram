system startup
startBot: aSecond
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
	|processBlock|
	self getUpdates:true.
	processBlock :=[self getUpdates:true do:[:each| self actionBot:each.].
							 (Delay forDuration: (Duration seconds: aSecond)) wait]. 
	self processFork: [processBlock repeat] fork.
	^self