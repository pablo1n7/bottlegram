system startup
startBot
	"comment stating purpose of instance-side message"
	"scope: class-variables  &  instance-variables"
	|teapot|
	self webhook ifNil: [Exception signal: 'you must set a webhook'].
	teapot := Teapot configure: {#defaultOutput -> #json. #port -> self port. #debugMode -> true }.
	teapot POST: '/'-> [ :req | 
								|response aMessages aMessage|
								response := STONJSON fromString: (req entity string).
								aMessages := response at:'message'.
								aMessage := BottleMessage new: aMessages bot:self.
								self actionBot: aMessage.];
			 GET: '/' -> 'Bonjour!';
    		 start.
	"self getUpdates:true do:[:each| self actionBot:each.]"