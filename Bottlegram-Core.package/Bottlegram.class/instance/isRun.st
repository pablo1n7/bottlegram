accessing
isRun
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
	self processFork ifNotNil: [ ^true ].
	^false.