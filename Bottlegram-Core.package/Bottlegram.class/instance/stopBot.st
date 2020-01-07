system startup
stopBot
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"	
	self isRun ifTrue:[self processFork terminate ].
	self processFork: nil.
	self teapot ifNotNil: [ self teapot stop. ]